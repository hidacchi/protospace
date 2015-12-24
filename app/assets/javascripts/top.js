// window.addEventListener("load", function() {
//   var btn = document.querySelector("li.sort_tab.inactive");
//   btn.addEventListener("click", function() {
//     if( location.pathname=="/prototypes/newest" ) {
//       $("li.sort_tab").toggleClass("inactive active");
//     };
//   });
// });


// 上記or下記


// window.addEventListener("load", function() {
//   var $list = $('.sort_tab')
//   $list.on("click", function(e) {
//     $list.remove("active");
//     $(this).addClass("active");
//   });
// });



// -------------------------------------------------------
// メモ
// -------------------------------------------------------
// viewをindex.html.erb一枚で統一し、newestとpopularコントローラーのindexアクションで定義したインスタンス変数のオブジェクトの中身の違いだけでviewテンプレートの内容を切り替えして、remote_trueの非同期通信なしでjsで実装しようとすると、onclickした後にnewestとpopularのrender top/indexが動き、内容が塗り替えられ、ボタンのクラスが元に戻ってしまうという現象が起きた。

// そのため、remote_trueで非同期通信するか、現在の実装のように各viewを用意する方法の二択であることに行き着いた。
// この方法の他に、top>index.html.erbのボタンの箇所をif文で条件分岐する方法もある。

// - if controller.action_name == "index"
//     %li.popular.active{ role: "presentation" }
//       = link_to "Popular PROTO", root_path
//     %li.newest{ role: "presentation" }
//       = link_to "Newest PROTO", newest_prototypes_path
//   - else
//     %li.popular{ role: "presentation" }
//       = link_to "Popular PROTO", root_path
//     %li.newest.active{ role: "presentation" }
//       = link_to "Newest PROTO", newest_prototypes_path

// renderが動いたあとに、jsのonclickが動くようにできればいいんだけど、それは理論的に難しいのではないか。
// また、remote_tureにすると非同期なためパスが変わらないという性質があり、今回は使用しなかった。

// 参考
// http://qiita.com/nilinomiya1222/private/78adfc5f8c56ce07d719
