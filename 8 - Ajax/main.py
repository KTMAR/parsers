import requests
import csv


def get_response(url):
    response = requests.get(url)
    return response.text


def write_csv(data):
    with open('websites.csv', 'a', encoding="utf-8") as file:
        order = ['name', 'url', 'desc', 'traffic', 'percent']
        writer = csv.DictWriter(file, fieldnames=order)
        writer.writerow(data)


def main():
    for i in range(0, 5569):

        url = f'https://www.liveinternet.ru/rating/ru/today.tsv?page={str(i)};'
        response = get_response(url)
        data = response.strip().split('\n')[1:]

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


if __name__ == '__main__':
    main()
