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
        backgroundColor: ['#4e73df', '#1cc88a', '#36b9cc', '#4e73df', '#1cc88a', '#36b9cc', '#4e73df', '#1cc88a', '#36b9cc', '#4e73df', '#1cc88a', '#36b9cc'],
        hoverBackgroundColor: ['#2e59d9', '#17a673', '#2c9faf', '#2e59d9', '#17a673', '#2c9faf', '#4e73df', '#1cc88a', '#36b9cc', '#4e73df', '#1cc88a', '#36b9cc'],
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
  console.log(value);
  data_kc = value;

  var ajax = new XMLHttpRequest();
  if (data_kc == '' || data_kc == 'semua') {
    ajax.open(`GET`, `get_data.php`, true);
  } else {
    ajax.open(`GET`, `get_data.php?data_kc=${data_kc}`, true);
  }
  ajax.setRequestHeader("Accept", "application/json")
  // ajax.setRequestHeader("Authorization", "Bearer {token}")
  ajax.send();

  ajax.onreadystatechange = function () {
    if (this.readyState == 4 && this.status == 200) {
      console.log(this.responseText);
      let data = JSON.parse(this.responseText);
      console.log(data);
      // myPieChart.data.labels = result.labels;
      myPieChart.data.datasets[0].data = data
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



