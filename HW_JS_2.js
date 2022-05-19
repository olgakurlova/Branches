/*Напишите валидационный скрипт используя функции 

 1. Скрипт должен на вход принимать строку.
 2. После проверки строки выводить в консоль сообщение где будет конкретно написано, что не так в ведённой строке.
 3. Минимум 5 символов в строке
 4. Максимум 64 символа в строке
 5. В строке должны быть буквы
 6. Должна быть хотя бы одна буква в верхнем регистре
 7. Должна быть хотя бы одна цифра
 8. Должна быть хотя бы одна @
 9. Строка не должна быть пустой*/

  const checkString = function(someString){
    if (typeof(someString) !== 'string'){
      console.log("это не строка,введите строку")
      return
        }
        
    
  const lowerCase = /[a-z-а-я]+/.test(someString);
  console.log("есть ли любая буква в нижнем регистре? ",lowerCase);

  const UpperCase = /[A-Z-А-Я]+/.test(someString);
  console.log("есть ли хотя бы 1 буква в верхнем регистре? ",UpperCase);

  const numCase = /[0-9]+/.test(someString);
  console.log("цифра есть?",numCase);

  const sobaka = /[@]+/.test(someString)
  

  
   if(someString.length == 0){
        console.log("строка не должна быть пустой")
        return
      } 
      
  //else if(someString!==someString){
    //console.log("опять не строка,а  NaN")
  //} 
    
   if (someString.length < 5){
    console.log("количество символов должно быть больше 5")
    return
  }
   if (someString.length > 64) {
    console.log("Максимум 64 символа в строке")
    return
  }  
    
   if(lowerCase == false) {
    console.log("должны быть буквы ")
    return
  }
  
   if(UpperCase == false){
    console.log("Должна быть хотя бы одна буква в верхнем регистре")
    return
  }
  
   if(numCase == false){
    console.log("Должна быть хотя бы одна цифра")
    return
  }
 if(sobaka == false) {
    console.log("Должна быть хотя бы одна @");
    return
  }
  
 {console.log("Фуух! наконец-то та строка что надо! Молодец!")}
 }
 checkString("ghji2@GHk")