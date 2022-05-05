import requests
from bs4 import BeautifulSoup


def get_html(url):
    response = requests.get(url)
    return response.text


crypto_info = []


def get_names_before_ten(tag, search_name):
    name_tag = tag[2].find('a').find('div').find('div').find('p').text
    ticket = tag[2].find('a').find('div').find('div').find('div').find('p').text
    price = tag[3].find('a').text

    data = {
        'name': name_tag,
        'ticket': ticket,
        'price': price,
    }
    # data = [name_tag, ticket, price]

    if search_name in name_tag:
        return data
    return None


def get_data_before_ten(html, coin_name):
    soup = BeautifulSoup(html, 'lxml')
    trs = soup.find('div', class_='h7vnx2-1 bFzXgL').find('tbody').find_all('tr')

    for tr in trs[:10]:
        tds = tr.find_all('td')
        names = get_names_before_ten(tds, coin_name)
        if names:
            crypto_info.append(names)


def get_names_after_ten(tag, search_name):
    name_tag = tag[2].find('a').find_all('span')[1].text.strip()
    ticket = tag[2].find('a').find_all('span')[2].text.strip()
    price = tag[3].text.strip()

    # data = [name_tag, ticket, price]
    data = {
        'name': name_tag,
        'ticket': ticket,
        'price': price,
    }

    if search_name in name_tag:
        return data
    return None


def get_data_after_ten(html, coin_name):
    soup = BeautifulSoup(html, 'lxml')
    trs = soup.find('div', class_='h7vnx2-1 bFzXgL').find('tbody').find_all('tr')

    for tr in trs[10:]:
        tds = tr.find_all('td')
        names = get_names_after_ten(tds, coin_name)
        if names:
            crypto_info.append(names)


def main():
    url = 'https://coinmarketcap.com/'
    input_coin = input('Введите че ищем: ')
    get_data_before_ten(get_html(url), input_coin)
    get_data_after_ten(get_html(url), input_coin)

    for i in crypto_info:
        for x in i:
            print(x + ': ', i[x])


if __name__ == '__main__':
    main()
