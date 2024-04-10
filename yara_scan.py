import click
from analysis import get_threads, analyze_yara


@click.command()
@click.option("-f", "--db_file", help="The DB file path.", default="user_messages.db")
@click.option("-u", "--user", help="The user ID.", default=None)
@click.option("-c", "--channel", help="The channel ID.", default=None)
@click.option(
    "-r", "--rules_file", help="The YARA rules file.", default="yara_rules.yar"
)
def main(db_file, user, channel, rules_file):
    threads = get_threads(db_file, channel_id=channel, user_id=user)
    yara_match = analyze_yara(
        threads, user_id=user, channel_id=channel, rules_file=rules_file, verbose=True
    )
    print(f"Rules: {yara_match['rules']}")


if __name__ == "__main__":
    main()
