import requests
import csv
from multiprocessing import Pool


def get_response(url):
    response = requests.get(url)
    return response.text


def write_csv(data):
    with open('websites.csv', 'a', encoding="utf-8") as file:
        order = ['name', 'url', 'desc', 'traffic', 'percent']
        writer = csv.DictWriter(file, fieldnames=order)
        writer.writerow(data)


def get_page_data(text):
    data = text.strip().split('\n')[1:]

    for row in data:
        columns = row.strip().split('\t')
        name = columns[0]
        url = columns[1]
        desc = columns[2]
        traffic = columns[3]
        percent = columns[4]

        data = {
            'name': name,
            'url': url,
            'desc': desc,
            'traffic': traffic,
            'percent': percent
        }
        write_csv(data)


def make_all(url):
    text = get_response(url)
    get_page_data(text)


def main():
    url = 'https://www.liveinternet.ru/rating/ru/today.tsv?page={};'
    urls = [url.format(str(i)) for i in range(1, 5570)]

    with Pool(20) as p:
        p.map(make_all, urls)


if __name__ == '__main__':
    main()
