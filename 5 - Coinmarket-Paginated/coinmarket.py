import requests
from bs4 import BeautifulSoup
import csv


def get_html(url):
    response = requests.get(url)
    if response.ok:
        return response.text
    print(response.status_code)


def write_csv(data):
    with open('coinmarketcup.csv', 'a') as file:
        writer = csv.writer(file)
        writer.writerow((
            data['name'],
            data['url'],
            data['price']
        ))


def get_data(html):
    soup = BeautifulSoup(html, 'lxml')
    trs = soup.find('div', class_='h7vnx2-1 bFzXgL').find('tbody').find_all('tr')
    for tr in trs:
        tds = tr.find_all('td')
        try:
            name = tds[2].find('a', class_='cmc-link').text.strip()
        except AttributeError:
            name = 'Empty'

        try:
            url = 'https://coinmarketcap.com' + tds[2].find('a').get('href')
        except AttributeError:
            url = ''

        try:
            price = tds[3].find('span').text
        except AttributeError:
            price = ''

        data = {
            'name': name,
            'url': url,
            'price': price
        }
        write_csv(data)


def main():
    pattern = 'https://coinmarketcap.com/?page={}/'
    for i in range(0, 10):
        url = pattern.format(str(i))
        get_data(get_html(url))


if __name__ == '__main__':
    main()
