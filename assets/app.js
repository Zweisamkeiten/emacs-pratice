window.addEventListener("load", function () {
  var orgSrcContainers = document.getElementsByClassName("org-src-container");
  Array.prototype.forEach.call(orgSrcContainers, function (el) {
    el.style.display = "none";
  });

  var showButton = document.createElement("button");
  showButton.setAttribute("id", "toggleSrcButton");
  showButton.textContent = "显示代码";
  //  document.querySelector('h1').insertAdjacentElement('afterend', showButton);

  var showFlag = false;
  showButton.addEventListener("click", function () {
    showFlag = !showFlag;
    Array.prototype.forEach.call(orgSrcContainers, function (el) {
      el.style.display = showFlag ? "block" : "none";
    });
    showButton.textContent = showFlag ? "隐藏代码" : "显示代码";
  });

  var moduleList = [
    ["Basic", "index.html"],
    ["Org", "org.html"],
    ["Prog", "prog.html"],
  ];

  var ul = document.createElement("ul");
  ul.setAttribute("id", "moduleList");
  moduleList.forEach(function (ele) {
    var li = document.createElement("li");
    ul.appendChild(li);
    li.innerHTML = "<a href='" + ele[1] + "'>" + ele[0] + "</a>";
  });
  ul.append(showButton);

  document.querySelector("h1").insertAdjacentElement("afterend", ul);
});
