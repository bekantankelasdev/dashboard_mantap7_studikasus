// Set new default font family and font color to mimic Bootstrap's default styling
Chart.defaults.global.defaultFontFamily = 'Nunito', '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#858796';

// Pie Chart Example
var ctx = document.getElementById("myPieChart2");
var myPieChart = new Chart(ctx, {
  type: 'doughnut',
  data: {
    labels: [],
    datasets: [
      {
        data: [],
        backgroundColor: ['#4e73df', '#1cc88a', '#36b9cc', '#4E6C50', '#0081B4', '#D3756B', '#5BC0F8', '#F5EA5A'],
        hoverBackgroundColor: ['#4e73df', '#1cc88a', '#36b9cc', '#4E6C50', '#0081B4', '#D3756B', '#5BC0F8', '#F5EA5A'],
        hoverBorderColor: "rgba(234, 236, 244, 1)",
      }
    ],
  },
  options: {
    maintainAspectRatio: false,
    tooltips: {
      backgroundColor: "rgb(255,255,255)",
      bodyFontColor: "#858796",
      borderColor: '#dddfeb',
      borderWidth: 1,
      xPadding: 15,
      yPadding: 15,
      displayColors: false,
      caretPadding: 10,
    },
    legend: {
      display: false
    },
    cutoutPercentage: 80,
  },
});

var data_kc = ''
function get_value_kc() {
  var option_html = document.getElementById("selected_kc");
  var value = option_html.value;
  data_kc = value;

  var ajax = new XMLHttpRequest();
  if (data_kc == '' || data_kc == 'semua') { // atau
    ajax.open(`GET`, `get_data.php`, true);
  } else {
    ajax.open(`GET`, `get_data.php?data_kc=${data_kc}`, true);
  }

  ajax.setRequestHeader("Accept", "application/json")
  // ajax.setRequestHeader("Authorization", "Bearer {token}")
  ajax.send();

  ajax.onreadystatechange = function () {
    if (this.readyState == 4 && this.status == 200) {
      let data = JSON.parse(this.responseText);
      myPieChart.data.labels = data.labels;
      myPieChart.data.datasets[0].data = data.data
      myPieChart.update();
    }
  };
}

function get_value_rentang() {
  var tanggal_awal = document.getElementById("tanggal_awal");
  var value_tanggal_awal = tanggal_awal.value;
  var tanggal_akhir = document.getElementById("tanggal_akhir");
  var value_tanggal_akhir = tanggal_akhir.value;

  var ajax = new XMLHttpRequest();
  if (value_tanggal_awal == '' && value_tanggal_akhir == '') {
    ajax.open(`GET`, `get_data.php`, true);
  } else {
    ajax.open(`GET`, `get_data.php?value_tanggal_awal=${value_tanggal_awal}&value_tanggal_akhir=${value_tanggal_akhir}`, true);
  }
  ajax.setRequestHeader("Accept", "application/json")
  // ajax.setRequestHeader("Authorization", "Bearer {token}")
  ajax.send();

  ajax.onreadystatechange = function () {
    if (this.readyState == 4 && this.status == 200) {
      console.log(this.responseText);
      let data = JSON.parse(this.responseText);
      console.log(data);
      myPieChart.data.labels = data.labels;
      myPieChart.data.datasets[0].data = data.data
      myPieChart.update();
    }
  };
}

var ajax = new XMLHttpRequest();
ajax.open(`GET`, `get_data.php`, true);
ajax.setRequestHeader("Accept", "application/json")
// ajax.setRequestHeader("Authorization", "Bearer {token}")
ajax.send();

ajax.onreadystatechange = function () {
  if (this.readyState == 4 && this.status == 200) {
    let data = JSON.parse(this.responseText);
    console.log(data);
    myPieChart.data.labels = data.labels;
    myPieChart.data.datasets[0].data = data.data
    myPieChart.update();
    console.log(myPieChart.data);
  }
};



