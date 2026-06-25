<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <?php include "menuLateral.php"; ?>
    <main>
        <h1>Dashboard</h1>
        <h3>Visão Geral</h3>

        <div class="container">
            <div class="cards_index">
                <img src="img/wallet1.png" alt="" class="cardEstoque">
                <h2>Valor em Estoque</h2>
                <h1>R$ 2.000,00</h1>
            </div>
            <div class="cards_index">
                <img src="img/package1.png" alt="" class="cardPackage">
                <h2>Itens em Estoque</h2>
                <h1>155</h1>
            </div>
            <div class="cards_index">
                <img src="img/trending-down.png" alt="" class="cardTrend">
                <h2>Saídas (6 meses)</h2>
                <h1>0</h1>
            </div>
            <div class="cards_index">
                <img src="img/triangle-alert.png" alt="" class="cardAlert">
                <h2>Produtos em Alerta</h2>
                <h1>2</h1>
            </div>
        </div>
        <div class="container_graficos">
            <div class="grafico">
                <h1></h1>
            </div>
            <div class="grafico">
                <h1></h1>
            </div>
        </div>
        <div class="dashboard_despesas">
            <h1>Despesas</h1>
        </div>
    </main>
</body>
</html>