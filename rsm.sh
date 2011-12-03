# Load default setting
if [ -s $HOME/.rsmrc ] && [ -d $HOME/.rsm/versions/`cat $HOME/.rsmrc`/bin ]; then
  ruby_path=`cat $HOME/.rsmrc`
  export PATH="$HOME/.rsm/versions/$ruby_path/bin:$PATH"
fi

# rsm command
rsm() {
  ruby_path=$1
  if [ -d $HOME/.rsm/versions/$ruby_path/bin ]; then
    if [ `echo $PATH | grep $HOME/.rsm/versions` ]; then
      echo "Switch $ruby_path"
      export PATH=`echo $PATH | sed -e "s/\/.rsm\/versions\/.[^/]*/\/.rsm\/versions\/$ruby_path/g"`
    else
      echo "Using $ruby_path"
      export PATH="$HOME/.rsm/versions/$ruby_path/bin:$PATH"
    fi
  else
    echo "There is not $ruby_path"
  fi
}
