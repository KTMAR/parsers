from bs4 import BeautifulSoup
import csv
import requests
from random import choice


def get_proxy():
    response = requests.get('https://free-proxy-list.net/').text
    soup = BeautifulSoup(response, 'lxml')

    trs = soup.find('table', class_='table table-striped table-bordered').find_all('tr')[1:50]
    proxies = []

    for tr in trs:

        tds = tr.find_all('td')
        if 'yes' in tds[6].text.strip():
            ip = tds[0].text.strip()
            port = tds[1].text.strip()
            # schema = tds[6].text.strip()
            proxy = {
                'ip': ip + ':' + port,
                'schema': 'https'

            }
            proxies.append(proxy)
        else:
            continue

    return choice(proxies)


def get_html(url):
    p = get_proxy()
    proxy = {p['schema']: p['ip']}
    # proxy = {'http': '151.106.13.222:1080'}
    print(proxy)
    response = requests.get(url, proxies=proxy, timeout=5)
    return response.text


def get_ip(r):
    soup = BeautifulSoup(r, 'lxml')
    ip = soup.find('div', class_='ip').text.strip()
    return ip


def main():
    url = 'https://2ip.ua/ru/'

    print(get_ip(get_html(url)))


if __name__ == '__main__':
    main()