import csv
import re
import requests
from bs4 import BeautifulSoup


def get_html(url):
    response = requests.get(url)
    if not response.ok:
        print(f'Code : {response.status_code}, url: {url}')
    return response.text


def write_csv(data):
    with open('steam-clicker-games.csv', 'a', encoding='utf-8', newline='') as file:
        order = ['title', 'release_date', 'reviews', 'tags']
        writer = csv.DictWriter(file, fieldnames=order)
        writer.writerow(data)


def get_games(html):
    soup = BeautifulSoup(html, 'lxml')

    pattern = r'^https://store.steampowered.com/app/'
    games = soup.find_all('a', href=re.compile(pattern))
    return games


def get_hover_data(id):
    url = f'https://store.steampowered.com/apphoverpublic/{id}'
    html = get_html(url)
    soup = BeautifulSoup(html, 'lxml')
    try:
        title = soup.find('h4', class_='hover_title').text.strip()
    except AttributeError:
        title = 'None'
        print(url)
    try:
        release_date = soup.find('div', class_='hover_release').text.split(':')[-1].strip()
    except AttributeError:
        release_date = 'None'
        print(url)
    try:
        reviews = soup.find('div', class_='hover_review_summary').text.strip()
    except AttributeError:
        reviews = 'None'
        print(url)
    try:
        tags_row = soup.find_all('div', class_='app_tag')
    except AttributeError:
        tags = ''
        print(url)
    else:
        tags_text = [tag.text for tag in tags_row]
        tags = ', '.join(tags_text)

    data = {
        'title': title,
        'release_date': release_date,
        'reviews': reviews,
        'tags': tags
    }
    write_csv(data)


def main():
    all_games = []
    start = 0
    url = f'https://store.steampowered.com/search/results/?query&start={start}&count=100&term=clicker'

    while True:
        games = get_games(get_html(url))
        if games:
            all_games.extend(games)
            start += 100
            url = f'https://store.steampowered.com/search/results/?query&start={start}&count=100&term=clicker'

        else:
            break

    for game in all_games:
        id = game.get('data-ds-appid')
        get_hover_data(id)


if __name__ == '__main__':
    main()
