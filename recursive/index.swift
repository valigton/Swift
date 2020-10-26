func fn(v: Int) -> Int {
  if(v==1 || v==0) {
    return 1
  }
  if(v%2==0) {
    return fn(v: v/2)+2
  } else {
    return fn(v: v-1)+3
  }
}

print(fn(v:7))