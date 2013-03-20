for bundle in ./.vim/bundle/*
do
  pushd ${bundle}
  git pull
  echo "Updating ${bundle}"
  popd
done
