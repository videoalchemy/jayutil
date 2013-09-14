String timestamp;

void setup() {
  timestamp = year() + nf(month(),2) + nf(day(),2) + "-"  + nf(hour(),2) + nf(minute(),2) + nf(second(),2);
  println(timestamp);
  exit();
}

