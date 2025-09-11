find . \
  \( -name "*.cpp" -o -name "*.hpp" \) \
  -not -path "*/thirdparty/*" \
  -exec clang-format -i {} +
