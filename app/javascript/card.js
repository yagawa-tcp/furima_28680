const pay = () => {
  Payjp.setPublicKey(process.env.PAYJP_PUBLIC_KEY);
  const form = document.getElementById("buying_credit");
  form.addEventListener("submit", function (e) {
    
    e.preventDefault();
 
    const formResult = document.getElementById("buying_credit");
    const formData = new FormData(formResult);
 
    const card = {
      number: formData.get("buyer_data[number]"),
      cvc: formData.get("buyer_data[cvc]"),
      exp_month: formData.get("buyer_data[exp_month]"),
      exp_year: `20${formData.get("buyer_data[exp_year]")}`,
    };
    

    Payjp.createToken(card, (status, response) => {

      if (status == 200) {
        const token = response.id;
        const renderDom = document.getElementById("buying_credit");
        const tokenObj = `<input value=${token} type="text" name='buyer_data[token]'>`;
        renderDom.insertAdjacentHTML("beforeend", tokenObj);
      }
      document.getElementById("card-number").removeAttribute("name");
      document.getElementById("card-cvc").removeAttribute("name");
      document.getElementById("card-exp-month").removeAttribute("name");
      document.getElementById("card-exp-year").removeAttribute("name");
 
      // document.getElementById("buying_credit").submit();
      document.getElementById("buying_credit").reset();
    });
  });
 };
 
 window.addEventListener("load", pay);