class Tour {
  String? sId;
  String? title;
  String? image;
  String? date;
  String? time;
  double? price;
  int? like;
  double? ratting;
  List<Schedule>? schedule;
  String? provider;
  String? duration;
  String? place;
  int? review;

  Tour(
      {this.sId,
      this.title,
      this.image,
      this.date,
      this.time,
      this.price,
      this.like,
      this.ratting,
      this.schedule,
      this.provider,
      this.duration,
      this.place,
      this.review});

  Tour.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    title = json['title'];
    image = json['image'];
    date = json['date'];
    time = json['time'];
    price = json['price'].toDouble();
    like = json['like'];
    ratting = json['ratting'].toDouble();
    if (json['schedule'] != null) {
      schedule = <Schedule>[];
      json['schedule'].forEach((v) {
        schedule!.add(new Schedule.fromJson(v));
      });
    }
    provider = json['provider'];
    duration = json['duration'];
    place = json['place'];
    review = json['review'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['title'] = this.title;
    data['image'] = this.image;
    data['date'] = this.date;
    data['time'] = this.time;
    data['price'] = this.price;
    data['like'] = this.like;
    data['ratting'] = this.ratting;
    if (this.schedule != null) {
      data['schedule'] = this.schedule!.map((v) => v.toJson()).toList();
    }
    data['provider'] = this.provider;
    data['duration'] = this.duration;
    data['place'] = this.place;
    data['review'] = this.review;
    return data;
  }
}

class Schedule {
  String? place;
  List<Activity>? activity;

  Schedule({this.place, this.activity});

  Schedule.fromJson(Map<String, dynamic> json) {
    place = json['place'];
    if (json['activity'] != null) {
      activity = <Activity>[];
      json['activity'].forEach((v) {
        activity!.add(new Activity.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['place'] = this.place;
    if (this.activity != null) {
      data['activity'] = this.activity!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Activity {
  String? time;
  String? description;

  Activity({this.time, this.description});

  Activity.fromJson(Map<String, dynamic> json) {
    time = json['time'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['time'] = this.time;
    data['description'] = this.description;
    return data;
  }
}
