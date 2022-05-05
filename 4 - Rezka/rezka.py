import requests
from bs4 import BeautifulSoup
import csv


def get_html(url):
    response = requests.get(url)
    if response.ok:
        return response.text
    print(response.status_code)


def write_csv(data):
    with open('rezka.csv', 'a') as file:
        writer = csv.writer(file)
        writer.writerow((
            data['title'],
            data['url'],
            data['date'],
            data['genre'],
            data['director'],
            data['length']
        ))


def get_page_data(html):
    soup = BeautifulSoup(html, 'lxml')

    blocks = soup.find_all('div', class_='shorbox')

    for block in blocks:
        divs = block.find_all('div', class_='godshort')
        try:
            title = block.find('h2').text
        except AttributeError:
            title = 'None'
        try:
            url = block.find('h2').find('a').get('href')
        except AttributeError:
            url = 'Empty'
        try:
            date = divs[0].text.strip()
        except AttributeError:
            date = 'Empty'
        try:
            genre = divs[2].text.strip()
        except AttributeError:
            genre = 'Empty'
        try:
            country = divs[1].text.strip()
        except AttributeError:
            country = 'Empty'
        try:
            length = divs[4].text.strip()
        except AttributeError:
            length = 'Empty'
        try:
            director = divs[3].text.strip()
        except AttributeError:
            director = 'Empty'

        data = {
            'title': title,
            'url': url,
            'date': date,
            'genre': genre,
            'country': country,
            'length': length,
            'director': director
        }
        write_csv(data)


def main():

    pattern = 'https://kinokrad.co/uzhasy1/page/{}/'
    for i in range(0, 6):
        url = pattern.format(str(i))
        get_page_data(get_html(url))


if __name__ == '__main__':
    main()
