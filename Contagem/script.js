function contar(){
var ini = document.getElementById('txti')
var fim = document.getElementById('txtf')
var passo = document.getElementById('txtp')
var res = document.getElementById ('res')
if (ini.value.length == 0 || fim.value.length == 0 || passo.value.length == 0) {
    window.alert('[Error] Falta dados')}
    else {
    res.innerHTML = 'Contando:'
    var i = Number(ini.value)
    var f = Number(fim.value)
    var p = Number(passo.value)
if (i<f){ //contagem crescente
    for (var c = i;c <= f; c += p) {
        res.innerHTML += `${c} 👉`
    }}
    
    else { // contagem regressiva
        for(var c = i;c >=f ; c -= p ){
    res.innerHTML += `${c} 👉 `
        }
    } res.innerHTML += "🏁"
}

}
    
    
