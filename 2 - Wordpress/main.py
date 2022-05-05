import requests
from bs4 import BeautifulSoup
import csv


def get_html(url):
    response = requests.get(url)
    return response.text


def refined(string):
    string_rating = string.split()[0]
    return string_rating.replace(',', '')


def write_csv(data):
    with open('plugins.csv', 'a') as file:
        writer = csv.writer(file)
        writer.writerow((data['name'],
                         data['url'],
                         data['rating']))


def get_data(html):
    soup = BeautifulSoup(html, 'lxml')
    popular = soup.find_all('section')[1]
    plugins = popular.find_all('article')

    for plugin in plugins:
        name = plugin.find('h3').text
        url = plugin.find('h3').find('a').get('href')
        unrefined_rating = plugin.find('span', class_='rating-count').find('a').text
        rating = refined(unrefined_rating)

        data = {'name': name,
                'url': url,
                'rating': rating,
                }
        write_csv(data)


def main():
    url = 'https://wordpress.org/plugins/'
    get_data(get_html(url))


if __name__ == '__main__':
    main()
