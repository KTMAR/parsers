import csv
from peewee import *

db = PostgresqlDatabase(database='test1', user='postgres', password='Ktmar0188', host='localhost')


class Coin(Model):
    name = CharField(max_length=255)
    url = TextField()
    price = CharField()

    class Meta:
        database = db


def main():

    db.connect()
    db.create_tables([Coin])

    with open('coinmarketcup.csv') as f:
        order = ['name', 'url', 'price']
        reader = csv.DictReader(f, fieldnames=order)

        coins = list(reader)

        with db.atomic():
            for row in coins:
                Coin.create(**row)


if __name__ == '__main__':
    main()
