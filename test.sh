# 테스트할 문자열 설정
input="test/dev-merge
test/main-merge"

IFS=$'\n' read -r -d '' -a branches <<< "$input"
for branch in "${branches[@]}"; do
  echo "Branch: '$branch'"
done