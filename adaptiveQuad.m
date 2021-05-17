function y=adaptiveQuad(f, a, b, err)
  y1 = Simpsons(a, b, f);
  y2 = Simpsons(a, (a+b)/2, f) + Simpsons((a+b)/2, b, f);
  
  if abs(y1 - y2) < 15 * err
    y = y2;
    return;
  else
    y = adaptiveQuad(f, a, (a+b)/2, err/2) + adaptiveQuad(f, (a+b)/2, b, err/2);
  end
end