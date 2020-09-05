// Action Cable provides the framework to deal with WebSockets in Rails.
// You can generate new channels where WebSocket features live using the `rails generate channel` command.

// ここで計算式を始める
function calc (){
// htmlから3つの変数を呼び出し、定義する
  const price = document.getElementById("item-price");
  const tax = document.getElementById("add-tax-price");
  const profit = document.getElementById("profit");

  // priceにキーを入力時に出るイベント発動
  // price.addEventListener("keyUp", (e) => { …左記は備忘録として残しておく
  price.addEventListener("keyup", function() {

  // taxを求める計算式を入力(taxvalueの中身を規程してから四捨五入し、taxに渡す)
    const pricevalue = price.value;
    const taxvalue = Math.ceil(pricevalue * 0.1);
    tax.innerHTML = taxvalue;
  // profitを求める計算式を入力
    const profitvalue = (pricevalue - taxvalue) ;
    profit.innerHTML = profitvalue;

  })
}

window.addEventListener("load", calc);

