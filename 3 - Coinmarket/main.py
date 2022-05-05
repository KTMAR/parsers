import requests
from bs4 import BeautifulSoup
import csv


def get_html(url):
    response = requests.get(url)
    return response.text


def write_csv(data):
    with open('cmc.csv', 'a') as file:
        writer = csv.writer(file)
        writer.writerow((
            data['number'],
            data['name'],
            data['ticket'],
            data['price'],
            data['market_cup']
        ))


def get_page_first_ten(html):
    soup = BeautifulSoup(html, 'lxml')
    trs = soup.find('table').find('tbody').find_all('tr')
    for tr in trs[:10]:
        tds = tr.find_all('td')
        number = tds[1].text
        name = tds[2].find('a').find('div').find('div').find('p').text
        ticket = tds[2].find('a').find('div').find('div').find('div').find('p').text
        price = tds[3].find('a').text
        market_cap = tds[6].find('span').text

        data = {
            'number': number,
            'name': name,
            'ticket': ticket,
            'price': price,
            'market_cup': market_cap
        }
        write_csv(data)


def get_page_after_ten(html):
    soup = BeautifulSoup(html, 'lxml')
    trs = soup.find('table').find('tbody').find_all('tr')
    number = 10
    for tr in trs[10:]:
        number += 1
        tds = tr.find_all('td')
        name = tds[2].find('a').find_all('span')[1].text
        ticket = tds[2].find('a').find_all('span')[2].text
        price = tds[3].text

        data = {
            'number': number,
            'name': name,
            'ticket': ticket,
            'price': price,
            'market_cup': None

        }
        write_csv(data)


def main():
    url = 'https://coinmarketcap.com/'
    get_page_first_ten(get_html(url))
    get_page_after_ten(get_html(url))


if __name__ == '__main__':
    main()
