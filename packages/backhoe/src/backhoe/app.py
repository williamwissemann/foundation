import argparse
import logging
import os
import re


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--make_list", nargs="*", action="append")
    args = parser.parse_args()

    available = {}
    for makefile in args.make_list[0]:
        available.update(parse_makefile(makefile))

    filter_help = {}
    basic_help = {}
    for item in available:
        if "help" in item.split("/")[0].lower():
            basic_help[item] = available[item]
        else:
            filter_help[item] = available[item]

    pretty_print(basic_help)
    pretty_print(filter_help)


def parse_makefile(makefile):
    available = {}
    with open(makefile, "r") as opened_file:
        previous = ""
        for line in opened_file:
            if previous.startswith("##"):
                cmd = parse_command(line)
                if cmd:
                    available[cmd[0]] = parse_description(previous)
            previous = line
    return available


def parse_command(text):
    filter_by = os.getenv("MAKE_FILTER", ".*")
    find = re.findall(r"(^[a-zA-Z0-9_\-\/]+):", text)
    return find


def parse_description(text):
    text = text.strip("##")
    text = text.strip()
    return text


def pretty_print(items):
    for cmd in sorted(items):
        desc = items[cmd]
        while len(cmd) < 30:
            cmd += " "
        while len(desc) < 60:
            desc += " "
        print(f"  \x1b[32;01m{cmd[0:35]}\x1b[0m {desc}")


if __name__ == "__main__":
    main()
