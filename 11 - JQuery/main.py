import requests
import csv
from bs4 import BeautifulSoup


def get_html(url):
    user_agent = {
        'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36',
    }
    response = requests.get(url, headers=user_agent)
    return response.text


def get_articles(html):
    soup = BeautifulSoup(html, 'lxml')
    ts = soup.find('div', class_='testimonial-container').find_all('article')
    return ts


def get_data(ts):
    for t in ts:
        try:
            since = t.find('p', class_='traxer-since').text.strip()
        except AttributeError:
            since = 'None'
        try:
            author = t.find('p', class_='testimonial-author').text.strip()
        except AttributeError:
            author = 'None'

        data = {
            'since': since,
            'author': author
        }
        write_csv(data)

def write_csv(data):
    with open('faceit.csv', 'a') as file:
        order = ['since', 'author']
        writer = csv.DictWriter(file, fieldnames=order)
        writer.writerow(data)


def main():
    while True:
        page = 1
        url = 'https://catertrax.com/why-catertrax/traxers/page/{}/?themify_builder_infinite_scroll=yes'.format(str(page))

        articles = get_articles(get_html(url))

        if articles:
            get_data(articles)
            page += 1
        else:
            break


if __name__ == '__main__':
    main()
