# 테스트할 문자열 설정
input="test/dev-merge"


echo "$input" | while IFS= read -r branch; do
  echo "Deleting branch: $branch"
  git push origin --delete "$branch" || echo "Failed to delete branch: $branch"
done
