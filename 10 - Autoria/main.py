import requests
from bs4 import BeautifulSoup
import csv

headers = {
    'user-agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko)'
                  ' Chrome/100.0.4896.127 Safari/537.36'
}


def get_html(url):
    response = requests.get(url, headers=headers)
    if response.ok:
        return response.text
    print(response.status_code)


def write_csv(data):
    with open('auto-ria-info.csv', 'a', encoding="utf-8", newline='') as file:
        order = [
            'Модель',
            'Дата выпуска',
            'Цена в долларах',
            'Цена в гривнах',
            'Пробег',
            'Город',
            'Движок',
            'Трансмиссия',
            'Описание',
            'Дата публикации поста',
            'Дата последнего обновления поста'
        ]
        writer = csv.DictWriter(file, fieldnames=order)
        writer.writerow(data, )
        # writer.writerow((
        #     data['Модель'],
        #     data['Дата выпуска'],
        #     data['Цена в долларах'],
        #     data['Цена в гривнах'],
        #     data['Город'],
        #     data['Движок'],
        #     data['Трансмиссия'],
        #     data['Описание'],
        #     data['Дата публикации поста'],
        #     data['Дата последнего обновления поста'],
        # ))


def get_data(html):
    global mileage, city, engine, transmission
    soup = BeautifulSoup(html, 'lxml')

    blocks = soup.find_all('div', class_='content')
    for block in blocks:
        try:
            name = block.find('span', class_='blue bold').text
        except AttributeError:
            name = 'None'
        try:
            date_realize = block.find('a').text.strip().split(' ')[-1]
        except AttributeError:
            date_realize = 'None'
        try:
            price_usd = block.find('div', class_='price-ticket').text.split('•')[0]
        except AttributeError:
            price_usd = 'None'
        try:
            price_ua = block.find('div', class_='price-ticket').text.split('•')[1]
        except AttributeError:
            price_ua = 'None'
        uls = block.find_all('ul', class_='unstyle characteristic')

        for ul in uls:
            li = ul.find_all('li')

            try:
                mileage = li[0].text.strip()
            except AttributeError:
                mileage = 'None'
            try:
                city = li[1].text.strip().split(' ')[0]
            except AttributeError:
                city = 'None'
            try:
                engine = li[2].text.strip()
            except AttributeError:
                engine = 'None'
            try:
                transmission = li[3].text.strip()
            except AttributeError:
                transmission = 'None'

        try:
            description = block.find('div', class_='definition-data').find('p').text.strip()
        except AttributeError:
            description = 'None'
        try:
            date_realize_post = block.find('div', class_='footer_ticket').find('span').get('data-add-date')
        except AttributeError:
            date_realize_post = 'None'
        try:
            date_refresh_post = block.find('div', class_='footer_ticket').find('span').get('data-update-date')
        except AttributeError:
            date_refresh_post = 'None'

        data = {
            'Модель': name,
            'Дата выпуска': date_realize,
            'Цена в долларах': price_usd,
            'Цена в гривнах': price_ua,
            'Пробег': mileage,
            'Город': city,
            'Движок': engine,
            'Трансмиссия': transmission,
            'Описание': description,
            'Дата публикации поста': date_realize_post,
            'Дата последнего обновления поста': date_refresh_post,
        }
        write_csv(data)


def main():
    url = 'https://auto.ria.com/uk/search/?indexName=auto&country.import.usa.not=' \
          '-1&price.currency=1&sort[0].order=dates.created.desc&abroad.not=0&custom.not=1&page=1&size=20'
    get_data(get_html(url))


if __name__ == '__main__':
    main()
