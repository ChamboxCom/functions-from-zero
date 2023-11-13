import click
from mylib.bot import scrape


# function that summarises wikipedia articles
@click.command()
@click.option("--name", default="Microsoft", help="Name of the company")
@click.option("--length", default=1, help="Length of the summary")
def cli(name="Microsoft", length=1):
    result = scrape(name, length=length)
    click.echo(click.style(f"Wikipedia summary for {result} is: \n\n", fg="blue"))
    return result


if __name__ == "__main__":
    cli()
