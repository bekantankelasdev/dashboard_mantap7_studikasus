// Set new default font family and font color to mimic Bootstrap's default styling
Chart.defaults.global.defaultFontFamily = 'Nunito', '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#858796';

function number_format(number, decimals, dec_point, thousands_sep) {
  // *     example: number_format(1234.56, 2, ',', ' ');
  // *     return: '1 234,56'
  number = (number + '').replace(',', '').replace(' ', '');
  var n = !isFinite(+number) ? 0 : +number,
    prec = !isFinite(+decimals) ? 0 : Math.abs(decimals),
    sep = (typeof thousands_sep === 'undefined') ? ',' : thousands_sep,
    dec = (typeof dec_point === 'undefined') ? '.' : dec_point,
    s = '',
    toFixedFix = function (n, prec) {
      var k = Math.pow(10, prec);
      return '' + Math.round(n * k) / k;
    };
  // Fix for IE parseFloat(0.55).toFixed(0) = 0;
  s = (prec ? toFixedFix(n, prec) : '' + Math.round(n)).split('.');
  if (s[0].length > 3) {
    s[0] = s[0].replace(/\B(?=(?:\d{3})+(?!\d))/g, sep);
  }
  if ((s[1] || '').length < prec) {
    s[1] = s[1] || '';
    s[1] += new Array(prec - s[1].length + 1).join('0');
  }
  return s.join(dec);
}

// Bar Chart Example
var ctx = document.getElementById("myBarChart2");
var myBarChart2 = new Chart(ctx, {
  type: 'bar',
  data: {
    datasets: [
      // {
      //   label: "Banjarmasin",
      //   backgroundColor: "#EB455F", // warna belakang
      //   hoverBackgroundColor: "#FF597B", // warna ketika disentuh
      //   borderColor: "#EB455F", // warna garis tepi
      //   data: [4200, 5012, 5851, 6841, 4821, 10984, 0],
      // },
      // {
      //   label: "Palangkaraya",
      //   backgroundColor: "#62B6B7",
      //   hoverBackgroundColor: "#97DECE",
      //   borderColor: "#62B6B7",
      //   data: [4200, 5012, 5851, 6841, 4821, 10984, 0],
      // },
      // {
      //   label: "Samarinda",
      //   backgroundColor: "#FFB100",
      //   hoverBackgroundColor: "#FBC252",
      //   borderColor: "#FFB100",
      //   data: [4200, 5012, 5851, 6841, 4821, 10984, 0],
      // },
      // {
      //   label: "Pontianak",
      //   backgroundColor: "#0A2647",
      //   hoverBackgroundColor: "#243763",
      //   borderColor: "#0A2647",
      //   data: [4200, 5012, 5851, 6841, 4821, 10984, 0],
      // }
    ],
  },
  options: {
    maintainAspectRatio: false,
    layout: {
      padding: {
        left: 10,
        right: 25,
        top: 25,
        bottom: 0
      }
    },
    scales: {
      xAxes: [{
        time: {
          unit: 'month'
        },
        gridLines: {
          display: false,
          drawBorder: false
        },
        ticks: {
          // maxTicksLimit: 6 // jumlah label yang muncul pada horizontal
        },
        // maxBarThickness: 25,
      }],
      yAxes: [{
        ticks: {
          min: 0,
          max: 15000,
          maxTicksLimit: 5,
          padding: 10,
          // Include a dollar sign in the ticks
          callback: function (value, index, values) {
            return 'Rp. ' + number_format(value);
          }
        },
        gridLines: {
          color: "rgb(234, 236, 244)",
          zeroLineColor: "rgb(234, 236, 244)",
          drawBorder: false,
          borderDash: [2],
          zeroLineBorderDash: [2]
        }
      }],
    },
    legend: {
      display: false
    },
    tooltips: {
      titleMarginBottom: 10,
      titleFontColor: '#6e707e',
      titleFontSize: 14,
      backgroundColor: "rgb(255,255,255)",
      bodyFontColor: "#858796",
      borderColor: '#dddfeb',
      borderWidth: 1,
      xPadding: 15,
      yPadding: 15,
      displayColors: false,
      caretPadding: 10,
      callbacks: {
        label: function (tooltipItem, chart) {
          var datasetLabel = chart.datasets[tooltipItem.datasetIndex].label || '';
          return datasetLabel + ': Rp. ' + number_format(tooltipItem.yLabel);
        }
      }
    },
  }
});

let color_unit = ['#4e73df', '#1cc88a', '#36b9cc', '#4E6C50', '#0081B4', '#D3756B', '#5BC0F8', '#F5EA5A'];

var ajax = new XMLHttpRequest();
ajax.open("GET", "get_data_bade.php", true);
ajax.setRequestHeader("Accept", "application/json")
ajax.send();

ajax.onreadystatechange = function () {
  if (this.readyState == 4 && this.status == 200) {
    let data = JSON.parse(this.responseText);
    myBarChart2.data.labels = data.label; // bulan

    let data_set = []
    for (let index_unit = 0; index_unit < data.unit.length; index_unit++) {
      let object =
      {
        label: data.unit[index_unit],
        backgroundColor: color_unit[index_unit], // warna belakang
        hoverBackgroundColor: color_unit[index_unit], // warna ketika disentuh
        borderColor: color_unit[index_unit], // warna garis tepi
        data: [],
      }
      for (let index = 0; index < data.data.length; index++) {
        object.data.push(data.data[index][index_unit].data)
      }
      data_set.push(object);
    }
    
    myBarChart2.data.datasets = data_set

    myBarChart2.update();
    console.log(myBarChart2.data.datasets);
  }
};