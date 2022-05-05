import requests
import csv
from bs4 import BeautifulSoup


def get_html(url):
    response = requests.get(url)
    return response.json()


def get_data(html):
    soup = BeautifulSoup(html, 'lxml')
    block = soup.find('div', class_='style-scope ytd-grid-renderer')
    print(block)

# def write_csv(data):
#     with open('htrtrtr.html', 'a', encoding='UTF-8') as file:
#         file.write(data)


def main():
    url = 'https://www.youtube.com/c/%D0%90%D0%BB%D0%B5%D0%BA%D1%81%D0%B5%D0%B9%D0%9F%D0%B0%D1%82%D0%BE%D1%88%D0%B8%D0%BA/videos'
    # write_csv(get_html(url))
    get_data(get_html(url))



if __name__ == '__main__':
    main()