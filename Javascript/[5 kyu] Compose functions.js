var compose = function(n, ...f) {
    let val = n; 
    
    for (let i = 0 ; i < f.length ; i++){
      val = f[i](val)
    }
    
    return val
  }