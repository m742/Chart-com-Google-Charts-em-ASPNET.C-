<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Charts.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- referencia https://developers.google.com/chart/interactive/docs/gallery/barchart -->
    <title>Charts</title>
    <script type="text/javascript" src="https://www.google.com/jsapi "></script>
    <script type="text/javascript"></script>
     <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js "></script>
    <script type="text/javascript">
   

        // Carrega as bibliotecas Google Visualization e as específicas para
        //montagem do gráfico
        google.load('visualization', '1.0', { 'packages': ['corechart'] });

        // Faz com que o desenho do gráfico seja feito logo depois que as
        //bibliotecas estiverem carregadas
        google.setOnLoadCallback(drawChart);

        // Função que cria e popula uma tabela e cria e desenha um gráfico
        //com os dados da tabela
        function drawChart() {

            // Cria a tabela
            var data = new google.visualization.DataTable();
            data.addColumn('string', 'Linguagem'); //Adiciona a coluna 'Linguagem'
            data.addColumn('number', 'Porcentagem');//Adiciona coluna 'Porcentagem'
            data.addRows([ //Adiciona as linhas da tabela com os valores
                ['C', 18.3],
                ['Java', 16],
                ['Objective-C', 9.3],
                ['C++', 9.1],
                ['C#', 6.6],
                ['Visual Basic', 5.6],
                ['PHP', 5],
                ['Outras', 26.1]
            ]);

            // Configura título, largura e altura do gráfico
            var options = { 'title': 'As linguagens de programação mais utilizadas- Julho/2012 - Fonte: Tiobe', 'width': 550, 'height': 350, 'is3D': true, 'legend': 'left', 'fontSize': 15 };

            // Instancia e desenha o gráfico, passando os dados e as opções
            var chart = new google.visualization.PieChart(document.getElementById
                ('chart_div'));
            chart.draw(data, options);
        }
    </script>

    <script type="text/javascript">

        google.charts.load('current', { packages: ['corechart', 'bar'] });
        google.charts.setOnLoadCallback(drawMultSeries);

        function drawMultSeries() {
            var data = google.visualization.arrayToDataTable([
                ['City', '2010 Population', '2000 Population'],
                ['New York City, NY', 8175000, 8008000],
                ['Los Angeles, CA', 3792000, 3694000],
                ['Chicago, IL', 2695000, 2896000],
                ['Houston, TX', 2099000, 1953000],
                ['Philadelphia, PA', 1526000, 1517000]
            ]);

            var options = {
                title: 'Population of Largest U.S. Cities',
                chartArea: { width: '50%' },
                hAxis: {
                    title: 'Total Population',
                    minValue: 0
                },
                vAxis: {
                    title: 'City'
                }
            };

            var chart = new google.visualization.BarChart(document.getElementById('charts'));
            chart.draw(data, options);
        }

    </script>

</head>
<body>
    <form id="form1" runat="server">

        <div id="chart_div"></div> 

        <div id="charts"></div>

        <!--<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField HeaderText="NOME" />
                <asp:BoundField HeaderText="DESCRICAO" />
                <asp:BoundField HeaderText="CARGA" />
                <asp:BoundField HeaderText="TOTAL AULAS" />
                <asp:BoundField HeaderText="ANO" />
                <asp:BoundField />
            </Columns>
        </asp:GridView>-->
    </form>
</body>
</html>
