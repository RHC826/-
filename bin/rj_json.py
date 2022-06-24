"""
    日本語 json リーダー
    json.tool の代替プログラム。日本語を表示できる。
"""
import json
import re
import sys


def main() -> None:
    """
    絞り込み用
    $ Python rj_json hoge.json fuga
    で fuga を含む行を選別する。
    ただし、一行きりのファイルは丸ごと表示されるので grep などを用いること。
    """
    flg: bool = False
    # BOM付きなのは powershell でよく使うため
    lines: list = open(sys.argv[1], encoding="utf_8_sig").readlines()
    pattern: str = sys.argv[2] if len(sys.argv) > 2 else ""

    for line in iter(lines):
        for key in json.loads(line).keys():
            if re.search(pattern, json.loads(line)[key]):
                flg = True

        if flg is True:
            print(json.dumps(json.loads(line.strip()), indent=4, ensure_ascii=False))
            flg = False


if __name__ == "__main__":
    main()
