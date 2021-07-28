class RecipeModelHitsLinksSelf {
  String? href;
  String? title;
  RecipeModelHitsLinksSelf({
    this.href,
    this.title,
  });
  RecipeModelHitsLinksSelf.fromJson(Map<String, dynamic> json) {
    href = json["href"]?.toString();
    title = json["title"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["href"] = href;
    data["title"] = title;
    return data;
  }
}

class RecipeModelHitsLinks {
/*
{
  "self": {
    "href": "https://api.edamam.com/api/recipes/v2/b79327d05b8e5b838ad6cfd9576b30b6?type=public&app_id=20323ebc&app_key=%200a0599908c64087edb84d11dda4c8c8c",
    "title": "Self"
  }
} 
*/

  RecipeModelHitsLinksSelf? self;

  RecipeModelHitsLinks({
    this.self,
  });
  RecipeModelHitsLinks.fromJson(Map<String, dynamic> json) {
    self = (json["self"] != null) ? RecipeModelHitsLinksSelf.fromJson(json["self"]) : null;
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (self != null) {
      data["self"] = self!.toJson();
    }
    return data;
  }
}

class RecipeModelHitsRecipeDigestSub {
/*
{
  "label": "Saturated",
  "tag": "FASAT",
  "schemaOrgTag": "saturatedFatContent",
  "total": 62.497618998656044,
  "hasRDI": true,
  "daily": 312.48809499328024,
  "unit": "g"
} 
*/

  String? label;
  String? tag;
  String? schemaOrgTag;
  double? total;
  bool? hasRDI;
  double? daily;
  String? unit;

  RecipeModelHitsRecipeDigestSub({
    this.label,
    this.tag,
    this.schemaOrgTag,
    this.total,
    this.hasRDI,
    this.daily,
    this.unit,
  });
  RecipeModelHitsRecipeDigestSub.fromJson(Map<String, dynamic> json) {
    label = json["label"]?.toString();
    tag = json["tag"]?.toString();
    schemaOrgTag = json["schemaOrgTag"]?.toString();
    total = json["total"]?.toDouble();
    hasRDI = json["hasRDI"];
    daily = json["daily"]?.toDouble();
    unit = json["unit"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["label"] = label;
    data["tag"] = tag;
    data["schemaOrgTag"] = schemaOrgTag;
    data["total"] = total;
    data["hasRDI"] = hasRDI;
    data["daily"] = daily;
    data["unit"] = unit;
    return data;
  }
}

class RecipeModelHitsRecipeDigest {
  String? label;
  String? tag;
  String? schemaOrgTag;
  double? total;
  bool? hasRDI;
  double? daily;
  String? unit;
  List<RecipeModelHitsRecipeDigestSub?>? sub;

  RecipeModelHitsRecipeDigest({
    this.label,
    this.tag,
    this.schemaOrgTag,
    this.total,
    this.hasRDI,
    this.daily,
    this.unit,
    this.sub,
  });
  RecipeModelHitsRecipeDigest.fromJson(Map<String, dynamic> json) {
    label = json["label"]?.toString();
    tag = json["tag"]?.toString();
    schemaOrgTag = json["schemaOrgTag"]?.toString();
    total = json["total"]?.toDouble();
    hasRDI = json["hasRDI"];
    daily = json["daily"]?.toDouble();
    unit = json["unit"]?.toString();
  if (json["sub"] != null) {
  final v = json["sub"];
  final arr0 = <RecipeModelHitsRecipeDigestSub>[];
  v.forEach((v) {
  arr0.add(RecipeModelHitsRecipeDigestSub.fromJson(v));
  });
    sub = arr0;
    }
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["label"] = label;
    data["tag"] = tag;
    data["schemaOrgTag"] = schemaOrgTag;
    data["total"] = total;
    data["hasRDI"] = hasRDI;
    data["daily"] = daily;
    data["unit"] = unit;
    if (sub != null) {
      final v = sub;
      final arr0 = [];
  v!.forEach((v) {
  arr0.add(v!.toJson());
  });
      data["sub"] = arr0;
    }
    return data;
  }
}

class RecipeModelHitsRecipeTotalDailyVITK1 {
/*
{
  "label": "Vitamin K",
  "quantity": 294.42905321623556,
  "unit": "%"
} 
*/

  String? label;
  double? quantity;
  String? unit;

  RecipeModelHitsRecipeTotalDailyVITK1({
    this.label,
    this.quantity,
    this.unit,
  });
  RecipeModelHitsRecipeTotalDailyVITK1.fromJson(Map<String, dynamic> json) {
    label = json["label"]?.toString();
    quantity = json["quantity"]?.toDouble();
    unit = json["unit"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["label"] = label;
    data["quantity"] = quantity;
    data["unit"] = unit;
    return data;
  }
}

class RecipeModelHitsRecipeTotalDailyTOCPHA {
/*
{
  "label": "Vitamin E",
  "quantity": 130.85796512377968,
  "unit": "%"
} 
*/

  String? label;
  double? quantity;
  String? unit;

  RecipeModelHitsRecipeTotalDailyTOCPHA({
    this.label,
    this.quantity,
    this.unit,
  });
  RecipeModelHitsRecipeTotalDailyTOCPHA.fromJson(Map<String, dynamic> json) {
    label = json["label"]?.toString();
    quantity = json["quantity"]?.toDouble();
    unit = json["unit"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["label"] = label;
    data["quantity"] = quantity;
    data["unit"] = unit;
    return data;
  }
}

class RecipeModelHitsRecipeTotalDailyVITD {
/*
{
  "label": "Vitamin D",
  "quantity": 14.393997874666669,
  "unit": "%"
} 
*/

  String? label;
  double? quantity;
  String? unit;

  RecipeModelHitsRecipeTotalDailyVITD({
    this.label,
    this.quantity,
    this.unit,
  });
  RecipeModelHitsRecipeTotalDailyVITD.fromJson(Map<String, dynamic> json) {
    label = json["label"]?.toString();
    quantity = json["quantity"]?.toDouble();
    unit = json["unit"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["label"] = label;
    data["quantity"] = quantity;
    data["unit"] = unit;
    return data;
  }
}

class RecipeModelHitsRecipeTotalDailyVITB12 {
/*
{
  "label": "Vitamin B12",
  "quantity": 139.44185441083332,
  "unit": "%"
} 
*/

  String? label;
  double? quantity;
  String? unit;

  RecipeModelHitsRecipeTotalDailyVITB12({
    this.label,
    this.quantity,
    this.unit,
  });
  RecipeModelHitsRecipeTotalDailyVITB12.fromJson(Map<String, dynamic> json) {
    label = json["label"]?.toString();
    quantity = json["quantity"]?.toDouble();
    unit = json["unit"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["label"] = label;
    data["quantity"] = quantity;
    data["unit"] = unit;
    return data;
  }
}

class RecipeModelHitsRecipeTotalDailyFOLDFE {
/*
{
  "label": "Folate equivalent (total)",
  "quantity": 69.06780270399227,
  "unit": "%"
} 
*/

  String? label;
  double? quantity;
  String? unit;

  RecipeModelHitsRecipeTotalDailyFOLDFE({
    this.label,
    this.quantity,
    this.unit,
  });
  RecipeModelHitsRecipeTotalDailyFOLDFE.fromJson(Map<String, dynamic> json) {
    label = json["label"]?.toString();
    quantity = json["quantity"]?.toDouble();
    unit = json["unit"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["label"] = label;
    data["quantity"] = quantity;
    data["unit"] = unit;
    return data;
  }
}

class RecipeModelHitsRecipeTotalDailyVITB6A {
/*
{
  "label": "Vitamin B6",
  "quantity": 529.7197993048637,
  "unit": "%"
} 
*/

  String? label;
  double? quantity;
  String? unit;

  RecipeModelHitsRecipeTotalDailyVITB6A({
    this.label,
    this.quantity,
    this.unit,
  });
  RecipeModelHitsRecipeTotalDailyVITB6A.fromJson(Map<String, dynamic> json) {
    label = json["label"]?.toString();
    quantity = json["quantity"]?.toDouble();
    unit = json["unit"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["label"] = label;
    data["quantity"] = quantity;
    data["unit"] = unit;
    return data;
  }
}

class RecipeModelHitsRecipeTotalDailyNIA {
/*
{
  "label": "Niacin (B3)",
  "quantity": 543.1510614342633,
  "unit": "%"
} 
*/

  String? label;
  double? quantity;
  String? unit;

  RecipeModelHitsRecipeTotalDailyNIA({
    this.label,
    this.quantity,
    this.unit,
  });
  RecipeModelHitsRecipeTotalDailyNIA.fromJson(Map<String, dynamic> json) {
    label = json["label"]?.toString();
    quantity = json["quantity"]?.toDouble();
    unit = json["unit"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["label"] = label;
    data["quantity"] = quantity;
    data["unit"] = unit;
    return data;
  }
}

class RecipeModelHitsRecipeTotalDailyRIBF {
/*
{
  "label": "Riboflavin (B2)",
  "quantity": 147.0707711163021,
  "unit": "%"
} 
*/

  String? label;
  double? quantity;
  String? unit;

  RecipeModelHitsRecipeTotalDailyRIBF({
    this.label,
    this.quantity,
    this.unit,
  });
  RecipeModelHitsRecipeTotalDailyRIBF.fromJson(Map<String, dynamic> json) {
    label = json["label"]?.toString();
    quantity = json["quantity"]?.toDouble();
    unit = json["unit"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["label"] = label;
    data["quantity"] = quantity;
    data["unit"] = unit;
    return data;
  }
}

class RecipeModelHitsRecipeTotalDailyTHIA {
/*
{
  "label": "Thiamin (B1)",
  "quantity": 143.8710694862867,
  "unit": "%"
} 
*/

  String? label;
  double? quantity;
  String? unit;

  RecipeModelHitsRecipeTotalDailyTHIA({
    this.label,
    this.quantity,
    this.unit,
  });
  RecipeModelHitsRecipeTotalDailyTHIA.fromJson(Map<String, dynamic> json) {
    label = json["label"]?.toString();
    quantity = json["quantity"]?.toDouble();
    unit = json["unit"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["label"] = label;
    data["quantity"] = quantity;
    data["unit"] = unit;
    return data;
  }
}

class RecipeModelHitsRecipeTotalDailyVITC {
/*
{
  "label": "Vitamin C",
  "quantity": 115.25533049955037,
  "unit": "%"
} 
*/

  String? label;
  double? quantity;
  String? unit;

  RecipeModelHitsRecipeTotalDailyVITC({
    this.label,
    this.quantity,
    this.unit,
  });
  RecipeModelHitsRecipeTotalDailyVITC.fromJson(Map<String, dynamic> json) {
    label = json["label"]?.toString();
    quantity = json["quantity"]?.toDouble();
    unit = json["unit"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["label"] = label;
    data["quantity"] = quantity;
    data["unit"] = unit;
    return data;
  }
}

class RecipeModelHitsRecipeTotalDailyVITARAE {
/*
{
  "label": "Vitamin A",
  "quantity": 70.59685189053081,
  "unit": "%"
} 
*/

  String? label;
  double? quantity;
  String? unit;

  RecipeModelHitsRecipeTotalDailyVITARAE({
    this.label,
    this.quantity,
    this.unit,
  });
  RecipeModelHitsRecipeTotalDailyVITARAE.fromJson(Map<String, dynamic> json) {
    label = json["label"]?.toString();
    quantity = json["quantity"]?.toDouble();
    unit = json["unit"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["label"] = label;
    data["quantity"] = quantity;
    data["unit"] = unit;
    return data;
  }
}

class RecipeModelHitsRecipeTotalDailyP {
/*
{
  "label": "Phosphorus",
  "quantity": 318.7244650142856,
  "unit": "%"
} 
*/

  String? label;
  double? quantity;
  String? unit;

  RecipeModelHitsRecipeTotalDailyP({
    this.label,
    this.quantity,
    this.unit,
  });
  RecipeModelHitsRecipeTotalDailyP.fromJson(Map<String, dynamic> json) {
    label = json["label"]?.toString();
    quantity = json["quantity"]?.toDouble();
    unit = json["unit"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["label"] = label;
    data["quantity"] = quantity;
    data["unit"] = unit;
    return data;
  }
}

class RecipeModelHitsRecipeTotalDailyZN {
/*
{
  "label": "Zinc",
  "quantity": 166.74119435001495,
  "unit": "%"
} 
*/

  String? label;
  double? quantity;
  String? unit;

  RecipeModelHitsRecipeTotalDailyZN({
    this.label,
    this.quantity,
    this.unit,
  });
  RecipeModelHitsRecipeTotalDailyZN.fromJson(Map<String, dynamic> json) {
    label = json["label"]?.toString();
    quantity = json["quantity"]?.toDouble();
    unit = json["unit"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["label"] = label;
    data["quantity"] = quantity;
    data["unit"] = unit;
    return data;
  }
}

class RecipeModelHitsRecipeTotalDailyFE {
/*
{
  "label": "Iron",
  "quantity": 125.25797354561271,
  "unit": "%"
} 
*/

  String? label;
  double? quantity;
  String? unit;

  RecipeModelHitsRecipeTotalDailyFE({
    this.label,
    this.quantity,
    this.unit,
  });
  RecipeModelHitsRecipeTotalDailyFE.fromJson(Map<String, dynamic> json) {
    label = json["label"]?.toString();
    quantity = json["quantity"]?.toDouble();
    unit = json["unit"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["label"] = label;
    data["quantity"] = quantity;
    data["unit"] = unit;
    return data;
  }
}

class RecipeModelHitsRecipeTotalDailyK {
/*
{
  "label": "Potassium",
  "quantity": 125.9187411745603,
  "unit": "%"
} 
*/

  String? label;
  double? quantity;
  String? unit;

  RecipeModelHitsRecipeTotalDailyK({
    this.label,
    this.quantity,
    this.unit,
  });
  RecipeModelHitsRecipeTotalDailyK.fromJson(Map<String, dynamic> json) {
    label = json["label"]?.toString();
    quantity = json["quantity"]?.toDouble();
    unit = json["unit"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["label"] = label;
    data["quantity"] = quantity;
    data["unit"] = unit;
    return data;
  }
}

class RecipeModelHitsRecipeTotalDailyMG {
/*
{
  "label": "Magnesium",
  "quantity": 113.85169131498982,
  "unit": "%"
} 
*/

  String? label;
  double? quantity;
  String? unit;

  RecipeModelHitsRecipeTotalDailyMG({
    this.label,
    this.quantity,
    this.unit,
  });
  RecipeModelHitsRecipeTotalDailyMG.fromJson(Map<String, dynamic> json) {
    label = json["label"]?.toString();
    quantity = json["quantity"]?.toDouble();
    unit = json["unit"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["label"] = label;
    data["quantity"] = quantity;
    data["unit"] = unit;
    return data;
  }
}

class RecipeModelHitsRecipeTotalDailyCA {
/*
{
  "label": "Calcium",
  "quantity": 40.008074315705315,
  "unit": "%"
} 
*/

  String? label;
  double? quantity;
  String? unit;

  RecipeModelHitsRecipeTotalDailyCA({
    this.label,
    this.quantity,
    this.unit,
  });
  RecipeModelHitsRecipeTotalDailyCA.fromJson(Map<String, dynamic> json) {
    label = json["label"]?.toString();
    quantity = json["quantity"]?.toDouble();
    unit = json["unit"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["label"] = label;
    data["quantity"] = quantity;
    data["unit"] = unit;
    return data;
  }
}

class RecipeModelHitsRecipeTotalDailyNA {
/*
{
  "label": "Sodium",
  "quantity": 287.0256067352624,
  "unit": "%"
} 
*/

  String? label;
  double? quantity;
  String? unit;

  RecipeModelHitsRecipeTotalDailyNA({
    this.label,
    this.quantity,
    this.unit,
  });
  RecipeModelHitsRecipeTotalDailyNA.fromJson(Map<String, dynamic> json) {
    label = json["label"]?.toString();
    quantity = json["quantity"]?.toDouble();
    unit = json["unit"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["label"] = label;
    data["quantity"] = quantity;
    data["unit"] = unit;
    return data;
  }
}

class RecipeModelHitsRecipeTotalDailyCHOLE {
/*
{
  "label": "Cholesterol",
  "quantity": 271.68746015,
  "unit": "%"
} 
*/

  String? label;
  double? quantity;
  String? unit;

  RecipeModelHitsRecipeTotalDailyCHOLE({
    this.label,
    this.quantity,
    this.unit,
  });
  RecipeModelHitsRecipeTotalDailyCHOLE.fromJson(Map<String, dynamic> json) {
    label = json["label"]?.toString();
    quantity = json["quantity"]?.toDouble();
    unit = json["unit"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["label"] = label;
    data["quantity"] = quantity;
    data["unit"] = unit;
    return data;
  }
}

class RecipeModelHitsRecipeTotalDailyPROCNT {
/*
{
  "label": "Protein",
  "quantity": 461.4537936152663,
  "unit": "%"
} 
*/

  String? label;
  double? quantity;
  String? unit;

  RecipeModelHitsRecipeTotalDailyPROCNT({
    this.label,
    this.quantity,
    this.unit,
  });
  RecipeModelHitsRecipeTotalDailyPROCNT.fromJson(Map<String, dynamic> json) {
    label = json["label"]?.toString();
    quantity = json["quantity"]?.toDouble();
    unit = json["unit"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["label"] = label;
    data["quantity"] = quantity;
    data["unit"] = unit;
    return data;
  }
}

class RecipeModelHitsRecipeTotalDailyFIBTG {
/*
{
  "label": "Fiber",
  "quantity": 79.32724132327448,
  "unit": "%"
} 
*/

  String? label;
  double? quantity;
  String? unit;

  RecipeModelHitsRecipeTotalDailyFIBTG({
    this.label,
    this.quantity,
    this.unit,
  });
  RecipeModelHitsRecipeTotalDailyFIBTG.fromJson(Map<String, dynamic> json) {
    label = json["label"]?.toString();
    quantity = json["quantity"]?.toDouble();
    unit = json["unit"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["label"] = label;
    data["quantity"] = quantity;
    data["unit"] = unit;
    return data;
  }
}

class RecipeModelHitsRecipeTotalDailyCHOCDF {
/*
{
  "label": "Carbs",
  "quantity": 58.65402222210575,
  "unit": "%"
} 
*/

  String? label;
  double? quantity;
  String? unit;

  RecipeModelHitsRecipeTotalDailyCHOCDF({
    this.label,
    this.quantity,
    this.unit,
  });
  RecipeModelHitsRecipeTotalDailyCHOCDF.fromJson(Map<String, dynamic> json) {
    label = json["label"]?.toString();
    quantity = json["quantity"]?.toDouble();
    unit = json["unit"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["label"] = label;
    data["quantity"] = quantity;
    data["unit"] = unit;
    return data;
  }
}

class RecipeModelHitsRecipeTotalDailyFASAT {
/*
{
  "label": "Saturated",
  "quantity": 312.48809499328024,
  "unit": "%"
} 
*/

  String? label;
  double? quantity;
  String? unit;

  RecipeModelHitsRecipeTotalDailyFASAT({
    this.label,
    this.quantity,
    this.unit,
  });
  RecipeModelHitsRecipeTotalDailyFASAT.fromJson(Map<String, dynamic> json) {
    label = json["label"]?.toString();
    quantity = json["quantity"]?.toDouble();
    unit = json["unit"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["label"] = label;
    data["quantity"] = quantity;
    data["unit"] = unit;
    return data;
  }
}

class RecipeModelHitsRecipeTotalDailyFAT {
/*
{
  "label": "Fat",
  "quantity": 422.2290860040035,
  "unit": "%"
} 
*/

  String? label;
  double? quantity;
  String? unit;

  RecipeModelHitsRecipeTotalDailyFAT({
    this.label,
    this.quantity,
    this.unit,
  });
  RecipeModelHitsRecipeTotalDailyFAT.fromJson(Map<String, dynamic> json) {
    label = json["label"]?.toString();
    quantity = json["quantity"]?.toDouble();
    unit = json["unit"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["label"] = label;
    data["quantity"] = quantity;
    data["unit"] = unit;
    return data;
  }
}

class RecipeModelHitsRecipeTotalDailyENERCKCAL {
/*
{
  "label": "Energy",
  "quantity": 211.4021529100406,
  "unit": "%"
} 
*/

  String? label;
  double? quantity;
  String? unit;

  RecipeModelHitsRecipeTotalDailyENERCKCAL({
    this.label,
    this.quantity,
    this.unit,
  });
  RecipeModelHitsRecipeTotalDailyENERCKCAL.fromJson(Map<String, dynamic> json) {
    label = json["label"]?.toString();
    quantity = json["quantity"]?.toDouble();
    unit = json["unit"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["label"] = label;
    data["quantity"] = quantity;
    data["unit"] = unit;
    return data;
  }
}

class RecipeModelHitsRecipeTotalDaily {
/*
{
  "ENERC_KCAL": {
    "label": "Energy",
    "quantity": 211.4021529100406,
    "unit": "%"
  },
  "FAT": {
    "label": "Fat",
    "quantity": 422.2290860040035,
    "unit": "%"
  },
  "FASAT": {
    "label": "Saturated",
    "quantity": 312.48809499328024,
    "unit": "%"
  },
  "CHOCDF": {
    "label": "Carbs",
    "quantity": 58.65402222210575,
    "unit": "%"
  },
  "FIBTG": {
    "label": "Fiber",
    "quantity": 79.32724132327448,
    "unit": "%"
  },
  "PROCNT": {
    "label": "Protein",
    "quantity": 461.4537936152663,
    "unit": "%"
  },
  "CHOLE": {
    "label": "Cholesterol",
    "quantity": 271.68746015,
    "unit": "%"
  },
  "NA": {
    "label": "Sodium",
    "quantity": 287.0256067352624,
    "unit": "%"
  },
  "CA": {
    "label": "Calcium",
    "quantity": 40.008074315705315,
    "unit": "%"
  },
  "MG": {
    "label": "Magnesium",
    "quantity": 113.85169131498982,
    "unit": "%"
  },
  "K": {
    "label": "Potassium",
    "quantity": 125.9187411745603,
    "unit": "%"
  },
  "FE": {
    "label": "Iron",
    "quantity": 125.25797354561271,
    "unit": "%"
  },
  "ZN": {
    "label": "Zinc",
    "quantity": 166.74119435001495,
    "unit": "%"
  },
  "P": {
    "label": "Phosphorus",
    "quantity": 318.7244650142856,
    "unit": "%"
  },
  "VITA_RAE": {
    "label": "Vitamin A",
    "quantity": 70.59685189053081,
    "unit": "%"
  },
  "VITC": {
    "label": "Vitamin C",
    "quantity": 115.25533049955037,
    "unit": "%"
  },
  "THIA": {
    "label": "Thiamin (B1)",
    "quantity": 143.8710694862867,
    "unit": "%"
  },
  "RIBF": {
    "label": "Riboflavin (B2)",
    "quantity": 147.0707711163021,
    "unit": "%"
  },
  "NIA": {
    "label": "Niacin (B3)",
    "quantity": 543.1510614342633,
    "unit": "%"
  },
  "VITB6A": {
    "label": "Vitamin B6",
    "quantity": 529.7197993048637,
    "unit": "%"
  },
  "FOLDFE": {
    "label": "Folate equivalent (total)",
    "quantity": 69.06780270399227,
    "unit": "%"
  },
  "VITB12": {
    "label": "Vitamin B12",
    "quantity": 139.44185441083332,
    "unit": "%"
  },
  "VITD": {
    "label": "Vitamin D",
    "quantity": 14.393997874666669,
    "unit": "%"
  },
  "TOCPHA": {
    "label": "Vitamin E",
    "quantity": 130.85796512377968,
    "unit": "%"
  },
  "VITK1": {
    "label": "Vitamin K",
    "quantity": 294.42905321623556,
    "unit": "%"
  }
} 
*/

  RecipeModelHitsRecipeTotalDailyENERCKCAL? ENERCKCAL;
  RecipeModelHitsRecipeTotalDailyFAT? FAT;
  RecipeModelHitsRecipeTotalDailyFASAT? FASAT;
  RecipeModelHitsRecipeTotalDailyCHOCDF? CHOCDF;
  RecipeModelHitsRecipeTotalDailyFIBTG? FIBTG;
  RecipeModelHitsRecipeTotalDailyPROCNT? PROCNT;
  RecipeModelHitsRecipeTotalDailyCHOLE? CHOLE;
  RecipeModelHitsRecipeTotalDailyNA? NA;
  RecipeModelHitsRecipeTotalDailyCA? CA;
  RecipeModelHitsRecipeTotalDailyMG? MG;
  RecipeModelHitsRecipeTotalDailyK? K;
  RecipeModelHitsRecipeTotalDailyFE? FE;
  RecipeModelHitsRecipeTotalDailyZN? ZN;
  RecipeModelHitsRecipeTotalDailyP? P;
  RecipeModelHitsRecipeTotalDailyVITARAE? VITARAE;
  RecipeModelHitsRecipeTotalDailyVITC? VITC;
  RecipeModelHitsRecipeTotalDailyTHIA? THIA;
  RecipeModelHitsRecipeTotalDailyRIBF? RIBF;
  RecipeModelHitsRecipeTotalDailyNIA? NIA;
  RecipeModelHitsRecipeTotalDailyVITB6A? VITB6A;
  RecipeModelHitsRecipeTotalDailyFOLDFE? FOLDFE;
  RecipeModelHitsRecipeTotalDailyVITB12? VITB12;
  RecipeModelHitsRecipeTotalDailyVITD? VITD;
  RecipeModelHitsRecipeTotalDailyTOCPHA? TOCPHA;
  RecipeModelHitsRecipeTotalDailyVITK1? VITK1;

  RecipeModelHitsRecipeTotalDaily({
    this.ENERCKCAL,
    this.FAT,
    this.FASAT,
    this.CHOCDF,
    this.FIBTG,
    this.PROCNT,
    this.CHOLE,
    this.NA,
    this.CA,
    this.MG,
    this.K,
    this.FE,
    this.ZN,
    this.P,
    this.VITARAE,
    this.VITC,
    this.THIA,
    this.RIBF,
    this.NIA,
    this.VITB6A,
    this.FOLDFE,
    this.VITB12,
    this.VITD,
    this.TOCPHA,
    this.VITK1,
  });
  RecipeModelHitsRecipeTotalDaily.fromJson(Map<String, dynamic> json) {
    ENERCKCAL = (json["ENERC_KCAL"] != null) ? RecipeModelHitsRecipeTotalDailyENERCKCAL.fromJson(json["ENERC_KCAL"]) : null;
    FAT = (json["FAT"] != null) ? RecipeModelHitsRecipeTotalDailyFAT.fromJson(json["FAT"]) : null;
    FASAT = (json["FASAT"] != null) ? RecipeModelHitsRecipeTotalDailyFASAT.fromJson(json["FASAT"]) : null;
    CHOCDF = (json["CHOCDF"] != null) ? RecipeModelHitsRecipeTotalDailyCHOCDF.fromJson(json["CHOCDF"]) : null;
    FIBTG = (json["FIBTG"] != null) ? RecipeModelHitsRecipeTotalDailyFIBTG.fromJson(json["FIBTG"]) : null;
    PROCNT = (json["PROCNT"] != null) ? RecipeModelHitsRecipeTotalDailyPROCNT.fromJson(json["PROCNT"]) : null;
    CHOLE = (json["CHOLE"] != null) ? RecipeModelHitsRecipeTotalDailyCHOLE.fromJson(json["CHOLE"]) : null;
    NA = (json["NA"] != null) ? RecipeModelHitsRecipeTotalDailyNA.fromJson(json["NA"]) : null;
    CA = (json["CA"] != null) ? RecipeModelHitsRecipeTotalDailyCA.fromJson(json["CA"]) : null;
    MG = (json["MG"] != null) ? RecipeModelHitsRecipeTotalDailyMG.fromJson(json["MG"]) : null;
    K = (json["K"] != null) ? RecipeModelHitsRecipeTotalDailyK.fromJson(json["K"]) : null;
    FE = (json["FE"] != null) ? RecipeModelHitsRecipeTotalDailyFE.fromJson(json["FE"]) : null;
    ZN = (json["ZN"] != null) ? RecipeModelHitsRecipeTotalDailyZN.fromJson(json["ZN"]) : null;
    P = (json["P"] != null) ? RecipeModelHitsRecipeTotalDailyP.fromJson(json["P"]) : null;
    VITARAE = (json["VITA_RAE"] != null) ? RecipeModelHitsRecipeTotalDailyVITARAE.fromJson(json["VITA_RAE"]) : null;
    VITC = (json["VITC"] != null) ? RecipeModelHitsRecipeTotalDailyVITC.fromJson(json["VITC"]) : null;
    THIA = (json["THIA"] != null) ? RecipeModelHitsRecipeTotalDailyTHIA.fromJson(json["THIA"]) : null;
    RIBF = (json["RIBF"] != null) ? RecipeModelHitsRecipeTotalDailyRIBF.fromJson(json["RIBF"]) : null;
    NIA = (json["NIA"] != null) ? RecipeModelHitsRecipeTotalDailyNIA.fromJson(json["NIA"]) : null;
    VITB6A = (json["VITB6A"] != null) ? RecipeModelHitsRecipeTotalDailyVITB6A.fromJson(json["VITB6A"]) : null;
    FOLDFE = (json["FOLDFE"] != null) ? RecipeModelHitsRecipeTotalDailyFOLDFE.fromJson(json["FOLDFE"]) : null;
    VITB12 = (json["VITB12"] != null) ? RecipeModelHitsRecipeTotalDailyVITB12.fromJson(json["VITB12"]) : null;
    VITD = (json["VITD"] != null) ? RecipeModelHitsRecipeTotalDailyVITD.fromJson(json["VITD"]) : null;
    TOCPHA = (json["TOCPHA"] != null) ? RecipeModelHitsRecipeTotalDailyTOCPHA.fromJson(json["TOCPHA"]) : null;
    VITK1 = (json["VITK1"] != null) ? RecipeModelHitsRecipeTotalDailyVITK1.fromJson(json["VITK1"]) : null;
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (ENERCKCAL != null) {
      data["ENERC_KCAL"] = ENERCKCAL!.toJson();
    }
    if (FAT != null) {
      data["FAT"] = FAT!.toJson();
    }
    if (FASAT != null) {
      data["FASAT"] = FASAT!.toJson();
    }
    if (CHOCDF != null) {
      data["CHOCDF"] = CHOCDF!.toJson();
    }
    if (FIBTG != null) {
      data["FIBTG"] = FIBTG!.toJson();
    }
    if (PROCNT != null) {
      data["PROCNT"] = PROCNT!.toJson();
    }
    if (CHOLE != null) {
      data["CHOLE"] = CHOLE!.toJson();
    }
    if (NA != null) {
      data["NA"] = NA!.toJson();
    }
    if (CA != null) {
      data["CA"] = CA!.toJson();
    }
    if (MG != null) {
      data["MG"] = MG!.toJson();
    }
    if (K != null) {
      data["K"] = K!.toJson();
    }
    if (FE != null) {
      data["FE"] = FE!.toJson();
    }
    if (ZN != null) {
      data["ZN"] = ZN!.toJson();
    }
    if (P != null) {
      data["P"] = P!.toJson();
    }
    if (VITARAE != null) {
      data["VITA_RAE"] = VITARAE!.toJson();
    }
    if (VITC != null) {
      data["VITC"] = VITC!.toJson();
    }
    if (THIA != null) {
      data["THIA"] = THIA!.toJson();
    }
    if (RIBF != null) {
      data["RIBF"] = RIBF!.toJson();
    }
    if (NIA != null) {
      data["NIA"] = NIA!.toJson();
    }
    if (VITB6A != null) {
      data["VITB6A"] = VITB6A!.toJson();
    }
    if (FOLDFE != null) {
      data["FOLDFE"] = FOLDFE!.toJson();
    }
    if (VITB12 != null) {
      data["VITB12"] = VITB12!.toJson();
    }
    if (VITD != null) {
      data["VITD"] = VITD!.toJson();
    }
    if (TOCPHA != null) {
      data["TOCPHA"] = TOCPHA!.toJson();
    }
    if (VITK1 != null) {
      data["VITK1"] = VITK1!.toJson();
    }
    return data;
  }
}

class RecipeModelHitsRecipeTotalNutrientsWATER {
/*
{
  "label": "Water",
  "quantity": 1738.7966568296217,
  "unit": "g"
} 
*/

  String? label;
  double? quantity;
  String? unit;

  RecipeModelHitsRecipeTotalNutrientsWATER({
    this.label,
    this.quantity,
    this.unit,
  });
  RecipeModelHitsRecipeTotalNutrientsWATER.fromJson(Map<String, dynamic> json) {
    label = json["label"]?.toString();
    quantity = json["quantity"]?.toDouble();
    unit = json["unit"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["label"] = label;
    data["quantity"] = quantity;
    data["unit"] = unit;
    return data;
  }
}

class RecipeModelHitsRecipeTotalNutrientsVITK1 {
/*
{
  "label": "Vitamin K",
  "quantity": 353.31486385948267,
  "unit": "µg"
} 
*/

  String? label;
  double? quantity;
  String? unit;

  RecipeModelHitsRecipeTotalNutrientsVITK1({
    this.label,
    this.quantity,
    this.unit,
  });
  RecipeModelHitsRecipeTotalNutrientsVITK1.fromJson(Map<String, dynamic> json) {
    label = json["label"]?.toString();
    quantity = json["quantity"]?.toDouble();
    unit = json["unit"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["label"] = label;
    data["quantity"] = quantity;
    data["unit"] = unit;
    return data;
  }
}

class RecipeModelHitsRecipeTotalNutrientsTOCPHA {
/*
{
  "label": "Vitamin E",
  "quantity": 19.62869476856695,
  "unit": "mg"
} 
*/

  String? label;
  double? quantity;
  String? unit;

  RecipeModelHitsRecipeTotalNutrientsTOCPHA({
    this.label,
    this.quantity,
    this.unit,
  });
  RecipeModelHitsRecipeTotalNutrientsTOCPHA.fromJson(Map<String, dynamic> json) {
    label = json["label"]?.toString();
    quantity = json["quantity"]?.toDouble();
    unit = json["unit"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["label"] = label;
    data["quantity"] = quantity;
    data["unit"] = unit;
    return data;
  }
}

class RecipeModelHitsRecipeTotalNutrientsVITD {
/*
{
  "label": "Vitamin D",
  "quantity": 2.1590996812000003,
  "unit": "µg"
} 
*/

  String? label;
  double? quantity;
  String? unit;

  RecipeModelHitsRecipeTotalNutrientsVITD({
    this.label,
    this.quantity,
    this.unit,
  });
  RecipeModelHitsRecipeTotalNutrientsVITD.fromJson(Map<String, dynamic> json) {
    label = json["label"]?.toString();
    quantity = json["quantity"]?.toDouble();
    unit = json["unit"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["label"] = label;
    data["quantity"] = quantity;
    data["unit"] = unit;
    return data;
  }
}

class RecipeModelHitsRecipeTotalNutrientsVITB12 {
/*
{
  "label": "Vitamin B12",
  "quantity": 3.34660450586,
  "unit": "µg"
} 
*/

  String? label;
  double? quantity;
  String? unit;

  RecipeModelHitsRecipeTotalNutrientsVITB12({
    this.label,
    this.quantity,
    this.unit,
  });
  RecipeModelHitsRecipeTotalNutrientsVITB12.fromJson(Map<String, dynamic> json) {
    label = json["label"]?.toString();
    quantity = json["quantity"]?.toDouble();
    unit = json["unit"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["label"] = label;
    data["quantity"] = quantity;
    data["unit"] = unit;
    return data;
  }
}

class RecipeModelHitsRecipeTotalNutrientsFOLAC {
/*
{
  "label": "Folic acid",
  "quantity": 0,
  "unit": "µg"
} 
*/

  String? label;
  int? quantity;
  String? unit;

  RecipeModelHitsRecipeTotalNutrientsFOLAC({
    this.label,
    this.quantity,
    this.unit,
  });
  RecipeModelHitsRecipeTotalNutrientsFOLAC.fromJson(Map<String, dynamic> json) {
    label = json["label"]?.toString();
    quantity = json["quantity"]?.toInt();
    unit = json["unit"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["label"] = label;
    data["quantity"] = quantity;
    data["unit"] = unit;
    return data;
  }
}

class RecipeModelHitsRecipeTotalNutrientsFOLFD {
/*
{
  "label": "Folate (food)",
  "quantity": 276.2712108159691,
  "unit": "µg"
} 
*/

  String? label;
  double? quantity;
  String? unit;

  RecipeModelHitsRecipeTotalNutrientsFOLFD({
    this.label,
    this.quantity,
    this.unit,
  });
  RecipeModelHitsRecipeTotalNutrientsFOLFD.fromJson(Map<String, dynamic> json) {
    label = json["label"]?.toString();
    quantity = json["quantity"]?.toDouble();
    unit = json["unit"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["label"] = label;
    data["quantity"] = quantity;
    data["unit"] = unit;
    return data;
  }
}

class RecipeModelHitsRecipeTotalNutrientsFOLDFE {
/*
{
  "label": "Folate equivalent (total)",
  "quantity": 276.2712108159691,
  "unit": "µg"
} 
*/

  String? label;
  double? quantity;
  String? unit;

  RecipeModelHitsRecipeTotalNutrientsFOLDFE({
    this.label,
    this.quantity,
    this.unit,
  });
  RecipeModelHitsRecipeTotalNutrientsFOLDFE.fromJson(Map<String, dynamic> json) {
    label = json["label"]?.toString();
    quantity = json["quantity"]?.toDouble();
    unit = json["unit"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["label"] = label;
    data["quantity"] = quantity;
    data["unit"] = unit;
    return data;
  }
}

class RecipeModelHitsRecipeTotalNutrientsVITB6A {
/*
{
  "label": "Vitamin B6",
  "quantity": 6.886357390963229,
  "unit": "mg"
} 
*/

  String? label;
  double? quantity;
  String? unit;

  RecipeModelHitsRecipeTotalNutrientsVITB6A({
    this.label,
    this.quantity,
    this.unit,
  });
  RecipeModelHitsRecipeTotalNutrientsVITB6A.fromJson(Map<String, dynamic> json) {
    label = json["label"]?.toString();
    quantity = json["quantity"]?.toDouble();
    unit = json["unit"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["label"] = label;
    data["quantity"] = quantity;
    data["unit"] = unit;
    return data;
  }
}

class RecipeModelHitsRecipeTotalNutrientsNIA {
/*
{
  "label": "Niacin (B3)",
  "quantity": 86.90416982948213,
  "unit": "mg"
} 
*/

  String? label;
  double? quantity;
  String? unit;

  RecipeModelHitsRecipeTotalNutrientsNIA({
    this.label,
    this.quantity,
    this.unit,
  });
  RecipeModelHitsRecipeTotalNutrientsNIA.fromJson(Map<String, dynamic> json) {
    label = json["label"]?.toString();
    quantity = json["quantity"]?.toDouble();
    unit = json["unit"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["label"] = label;
    data["quantity"] = quantity;
    data["unit"] = unit;
    return data;
  }
}

class RecipeModelHitsRecipeTotalNutrientsRIBF {
/*
{
  "label": "Riboflavin (B2)",
  "quantity": 1.9119200245119274,
  "unit": "mg"
} 
*/

  String? label;
  double? quantity;
  String? unit;

  RecipeModelHitsRecipeTotalNutrientsRIBF({
    this.label,
    this.quantity,
    this.unit,
  });
  RecipeModelHitsRecipeTotalNutrientsRIBF.fromJson(Map<String, dynamic> json) {
    label = json["label"]?.toString();
    quantity = json["quantity"]?.toDouble();
    unit = json["unit"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["label"] = label;
    data["quantity"] = quantity;
    data["unit"] = unit;
    return data;
  }
}

class RecipeModelHitsRecipeTotalNutrientsTHIA {
/*
{
  "label": "Thiamin (B1)",
  "quantity": 1.7264528338354403,
  "unit": "mg"
} 
*/

  String? label;
  double? quantity;
  String? unit;

  RecipeModelHitsRecipeTotalNutrientsTHIA({
    this.label,
    this.quantity,
    this.unit,
  });
  RecipeModelHitsRecipeTotalNutrientsTHIA.fromJson(Map<String, dynamic> json) {
    label = json["label"]?.toString();
    quantity = json["quantity"]?.toDouble();
    unit = json["unit"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["label"] = label;
    data["quantity"] = quantity;
    data["unit"] = unit;
    return data;
  }
}

class RecipeModelHitsRecipeTotalNutrientsVITC {
/*
{
  "label": "Vitamin C",
  "quantity": 103.72979744959534,
  "unit": "mg"
} 
*/

  String? label;
  double? quantity;
  String? unit;

  RecipeModelHitsRecipeTotalNutrientsVITC({
    this.label,
    this.quantity,
    this.unit,
  });
  RecipeModelHitsRecipeTotalNutrientsVITC.fromJson(Map<String, dynamic> json) {
    label = json["label"]?.toString();
    quantity = json["quantity"]?.toDouble();
    unit = json["unit"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["label"] = label;
    data["quantity"] = quantity;
    data["unit"] = unit;
    return data;
  }
}

class RecipeModelHitsRecipeTotalNutrientsVITARAE {
/*
{
  "label": "Vitamin A",
  "quantity": 635.3716670147774,
  "unit": "µg"
} 
*/

  String? label;
  double? quantity;
  String? unit;

  RecipeModelHitsRecipeTotalNutrientsVITARAE({
    this.label,
    this.quantity,
    this.unit,
  });
  RecipeModelHitsRecipeTotalNutrientsVITARAE.fromJson(Map<String, dynamic> json) {
    label = json["label"]?.toString();
    quantity = json["quantity"]?.toDouble();
    unit = json["unit"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["label"] = label;
    data["quantity"] = quantity;
    data["unit"] = unit;
    return data;
  }
}

class RecipeModelHitsRecipeTotalNutrientsP {
/*
{
  "label": "Phosphorus",
  "quantity": 2231.0712550999992,
  "unit": "mg"
} 
*/

  String? label;
  double? quantity;
  String? unit;

  RecipeModelHitsRecipeTotalNutrientsP({
    this.label,
    this.quantity,
    this.unit,
  });
  RecipeModelHitsRecipeTotalNutrientsP.fromJson(Map<String, dynamic> json) {
    label = json["label"]?.toString();
    quantity = json["quantity"]?.toDouble();
    unit = json["unit"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["label"] = label;
    data["quantity"] = quantity;
    data["unit"] = unit;
    return data;
  }
}

class RecipeModelHitsRecipeTotalNutrientsZN {
/*
{
  "label": "Zinc",
  "quantity": 18.341531378501646,
  "unit": "mg"
} 
*/

  String? label;
  double? quantity;
  String? unit;

  RecipeModelHitsRecipeTotalNutrientsZN({
    this.label,
    this.quantity,
    this.unit,
  });
  RecipeModelHitsRecipeTotalNutrientsZN.fromJson(Map<String, dynamic> json) {
    label = json["label"]?.toString();
    quantity = json["quantity"]?.toDouble();
    unit = json["unit"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["label"] = label;
    data["quantity"] = quantity;
    data["unit"] = unit;
    return data;
  }
}

class RecipeModelHitsRecipeTotalNutrientsFE {
/*
{
  "label": "Iron",
  "quantity": 22.546435238210286,
  "unit": "mg"
} 
*/

  String? label;
  double? quantity;
  String? unit;

  RecipeModelHitsRecipeTotalNutrientsFE({
    this.label,
    this.quantity,
    this.unit,
  });
  RecipeModelHitsRecipeTotalNutrientsFE.fromJson(Map<String, dynamic> json) {
    label = json["label"]?.toString();
    quantity = json["quantity"]?.toDouble();
    unit = json["unit"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["label"] = label;
    data["quantity"] = quantity;
    data["unit"] = unit;
    return data;
  }
}

class RecipeModelHitsRecipeTotalNutrientsK {
/*
{
  "label": "Potassium",
  "quantity": 5918.1808352043345,
  "unit": "mg"
} 
*/

  String? label;
  double? quantity;
  String? unit;

  RecipeModelHitsRecipeTotalNutrientsK({
    this.label,
    this.quantity,
    this.unit,
  });
  RecipeModelHitsRecipeTotalNutrientsK.fromJson(Map<String, dynamic> json) {
    label = json["label"]?.toString();
    quantity = json["quantity"]?.toDouble();
    unit = json["unit"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["label"] = label;
    data["quantity"] = quantity;
    data["unit"] = unit;
    return data;
  }
}

class RecipeModelHitsRecipeTotalNutrientsMG {
/*
{
  "label": "Magnesium",
  "quantity": 478.1771035229573,
  "unit": "mg"
} 
*/

  String? label;
  double? quantity;
  String? unit;

  RecipeModelHitsRecipeTotalNutrientsMG({
    this.label,
    this.quantity,
    this.unit,
  });
  RecipeModelHitsRecipeTotalNutrientsMG.fromJson(Map<String, dynamic> json) {
    label = json["label"]?.toString();
    quantity = json["quantity"]?.toDouble();
    unit = json["unit"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["label"] = label;
    data["quantity"] = quantity;
    data["unit"] = unit;
    return data;
  }
}

class RecipeModelHitsRecipeTotalNutrientsCA {
/*
{
  "label": "Calcium",
  "quantity": 400.0807431570531,
  "unit": "mg"
} 
*/

  String? label;
  double? quantity;
  String? unit;

  RecipeModelHitsRecipeTotalNutrientsCA({
    this.label,
    this.quantity,
    this.unit,
  });
  RecipeModelHitsRecipeTotalNutrientsCA.fromJson(Map<String, dynamic> json) {
    label = json["label"]?.toString();
    quantity = json["quantity"]?.toDouble();
    unit = json["unit"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["label"] = label;
    data["quantity"] = quantity;
    data["unit"] = unit;
    return data;
  }
}

class RecipeModelHitsRecipeTotalNutrientsNA {
/*
{
  "label": "Sodium",
  "quantity": 6888.614561646296,
  "unit": "mg"
} 
*/

  String? label;
  double? quantity;
  String? unit;

  RecipeModelHitsRecipeTotalNutrientsNA({
    this.label,
    this.quantity,
    this.unit,
  });
  RecipeModelHitsRecipeTotalNutrientsNA.fromJson(Map<String, dynamic> json) {
    label = json["label"]?.toString();
    quantity = json["quantity"]?.toDouble();
    unit = json["unit"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["label"] = label;
    data["quantity"] = quantity;
    data["unit"] = unit;
    return data;
  }
}

class RecipeModelHitsRecipeTotalNutrientsCHOLE {
/*
{
  "label": "Cholesterol",
  "quantity": 815.06238045,
  "unit": "mg"
} 
*/

  String? label;
  double? quantity;
  String? unit;

  RecipeModelHitsRecipeTotalNutrientsCHOLE({
    this.label,
    this.quantity,
    this.unit,
  });
  RecipeModelHitsRecipeTotalNutrientsCHOLE.fromJson(Map<String, dynamic> json) {
    label = json["label"]?.toString();
    quantity = json["quantity"]?.toDouble();
    unit = json["unit"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["label"] = label;
    data["quantity"] = quantity;
    data["unit"] = unit;
    return data;
  }
}

class RecipeModelHitsRecipeTotalNutrientsPROCNT {
/*
{
  "label": "Protein",
  "quantity": 230.72689680763318,
  "unit": "g"
} 
*/

  String? label;
  double? quantity;
  String? unit;

  RecipeModelHitsRecipeTotalNutrientsPROCNT({
    this.label,
    this.quantity,
    this.unit,
  });
  RecipeModelHitsRecipeTotalNutrientsPROCNT.fromJson(Map<String, dynamic> json) {
    label = json["label"]?.toString();
    quantity = json["quantity"]?.toDouble();
    unit = json["unit"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["label"] = label;
    data["quantity"] = quantity;
    data["unit"] = unit;
    return data;
  }
}

class RecipeModelHitsRecipeTotalNutrientsSUGAR {
/*
{
  "label": "Sugars",
  "quantity": 16.239344767255698,
  "unit": "g"
} 
*/

  String? label;
  double? quantity;
  String? unit;

  RecipeModelHitsRecipeTotalNutrientsSUGAR({
    this.label,
    this.quantity,
    this.unit,
  });
  RecipeModelHitsRecipeTotalNutrientsSUGAR.fromJson(Map<String, dynamic> json) {
    label = json["label"]?.toString();
    quantity = json["quantity"]?.toDouble();
    unit = json["unit"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["label"] = label;
    data["quantity"] = quantity;
    data["unit"] = unit;
    return data;
  }
}

class RecipeModelHitsRecipeTotalNutrientsFIBTG {
/*
{
  "label": "Fiber",
  "quantity": 19.83181033081862,
  "unit": "g"
} 
*/

  String? label;
  double? quantity;
  String? unit;

  RecipeModelHitsRecipeTotalNutrientsFIBTG({
    this.label,
    this.quantity,
    this.unit,
  });
  RecipeModelHitsRecipeTotalNutrientsFIBTG.fromJson(Map<String, dynamic> json) {
    label = json["label"]?.toString();
    quantity = json["quantity"]?.toDouble();
    unit = json["unit"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["label"] = label;
    data["quantity"] = quantity;
    data["unit"] = unit;
    return data;
  }
}

class RecipeModelHitsRecipeTotalNutrientsCHOCDF {
/*
{
  "label": "Carbs",
  "quantity": 175.96206666631727,
  "unit": "g"
} 
*/

  String? label;
  double? quantity;
  String? unit;

  RecipeModelHitsRecipeTotalNutrientsCHOCDF({
    this.label,
    this.quantity,
    this.unit,
  });
  RecipeModelHitsRecipeTotalNutrientsCHOCDF.fromJson(Map<String, dynamic> json) {
    label = json["label"]?.toString();
    quantity = json["quantity"]?.toDouble();
    unit = json["unit"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["label"] = label;
    data["quantity"] = quantity;
    data["unit"] = unit;
    return data;
  }
}

class RecipeModelHitsRecipeTotalNutrientsFAPU {
/*
{
  "label": "Polyunsaturated",
  "quantity": 47.35051984782951,
  "unit": "g"
} 
*/

  String? label;
  double? quantity;
  String? unit;

  RecipeModelHitsRecipeTotalNutrientsFAPU({
    this.label,
    this.quantity,
    this.unit,
  });
  RecipeModelHitsRecipeTotalNutrientsFAPU.fromJson(Map<String, dynamic> json) {
    label = json["label"]?.toString();
    quantity = json["quantity"]?.toDouble();
    unit = json["unit"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["label"] = label;
    data["quantity"] = quantity;
    data["unit"] = unit;
    return data;
  }
}

class RecipeModelHitsRecipeTotalNutrientsFAMS {
/*
{
  "label": "Monounsaturated",
  "quantity": 147.39060633938868,
  "unit": "g"
} 
*/

  String? label;
  double? quantity;
  String? unit;

  RecipeModelHitsRecipeTotalNutrientsFAMS({
    this.label,
    this.quantity,
    this.unit,
  });
  RecipeModelHitsRecipeTotalNutrientsFAMS.fromJson(Map<String, dynamic> json) {
    label = json["label"]?.toString();
    quantity = json["quantity"]?.toDouble();
    unit = json["unit"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["label"] = label;
    data["quantity"] = quantity;
    data["unit"] = unit;
    return data;
  }
}

class RecipeModelHitsRecipeTotalNutrientsFATRN {
/*
{
  "label": "Trans",
  "quantity": 1.047163345382,
  "unit": "g"
} 
*/

  String? label;
  double? quantity;
  String? unit;

  RecipeModelHitsRecipeTotalNutrientsFATRN({
    this.label,
    this.quantity,
    this.unit,
  });
  RecipeModelHitsRecipeTotalNutrientsFATRN.fromJson(Map<String, dynamic> json) {
    label = json["label"]?.toString();
    quantity = json["quantity"]?.toDouble();
    unit = json["unit"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["label"] = label;
    data["quantity"] = quantity;
    data["unit"] = unit;
    return data;
  }
}

class RecipeModelHitsRecipeTotalNutrientsFASAT {
/*
{
  "label": "Saturated",
  "quantity": 62.497618998656044,
  "unit": "g"
} 
*/

  String? label;
  double? quantity;
  String? unit;

  RecipeModelHitsRecipeTotalNutrientsFASAT({
    this.label,
    this.quantity,
    this.unit,
  });
  RecipeModelHitsRecipeTotalNutrientsFASAT.fromJson(Map<String, dynamic> json) {
    label = json["label"]?.toString();
    quantity = json["quantity"]?.toDouble();
    unit = json["unit"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["label"] = label;
    data["quantity"] = quantity;
    data["unit"] = unit;
    return data;
  }
}

class RecipeModelHitsRecipeTotalNutrientsFAT {
  String? label;
  double? quantity;
  String? unit;

  RecipeModelHitsRecipeTotalNutrientsFAT({
    this.label,
    this.quantity,
    this.unit,
  });
  RecipeModelHitsRecipeTotalNutrientsFAT.fromJson(Map<String, dynamic> json) {
    label = json["label"]?.toString();
    quantity = json["quantity"]?.toDouble();
    unit = json["unit"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["label"] = label;
    data["quantity"] = quantity;
    data["unit"] = unit;
    return data;
  }
}

class RecipeModelHitsRecipeTotalNutrientsENERCKCAL {
/*
{
  "label": "Energy",
  "quantity": 4228.043058200812,
  "unit": "kcal"
} 
*/

  String? label;
  double? quantity;
  String? unit;

  RecipeModelHitsRecipeTotalNutrientsENERCKCAL({
    this.label,
    this.quantity,
    this.unit,
  });
  RecipeModelHitsRecipeTotalNutrientsENERCKCAL.fromJson(Map<String, dynamic> json) {
    label = json["label"]?.toString();
    quantity = json["quantity"]?.toDouble();
    unit = json["unit"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["label"] = label;
    data["quantity"] = quantity;
    data["unit"] = unit;
    return data;
  }
}

class RecipeModelHitsRecipeTotalNutrients {


  RecipeModelHitsRecipeTotalNutrientsENERCKCAL? ENERCKCAL;
  RecipeModelHitsRecipeTotalNutrientsFAT? FAT;
  RecipeModelHitsRecipeTotalNutrientsFASAT? FASAT;
  RecipeModelHitsRecipeTotalNutrientsFATRN? FATRN;
  RecipeModelHitsRecipeTotalNutrientsFAMS? FAMS;
  RecipeModelHitsRecipeTotalNutrientsFAPU? FAPU;
  RecipeModelHitsRecipeTotalNutrientsCHOCDF? CHOCDF;
  RecipeModelHitsRecipeTotalNutrientsFIBTG? FIBTG;
  RecipeModelHitsRecipeTotalNutrientsSUGAR? SUGAR;
  RecipeModelHitsRecipeTotalNutrientsPROCNT? PROCNT;
  RecipeModelHitsRecipeTotalNutrientsCHOLE? CHOLE;
  RecipeModelHitsRecipeTotalNutrientsNA? NA;
  RecipeModelHitsRecipeTotalNutrientsCA? CA;
  RecipeModelHitsRecipeTotalNutrientsMG? MG;
  RecipeModelHitsRecipeTotalNutrientsK? K;
  RecipeModelHitsRecipeTotalNutrientsFE? FE;
  RecipeModelHitsRecipeTotalNutrientsZN? ZN;
  RecipeModelHitsRecipeTotalNutrientsP? P;
  RecipeModelHitsRecipeTotalNutrientsVITARAE? VITARAE;
  RecipeModelHitsRecipeTotalNutrientsVITC? VITC;
  RecipeModelHitsRecipeTotalNutrientsTHIA? THIA;
  RecipeModelHitsRecipeTotalNutrientsRIBF? RIBF;
  RecipeModelHitsRecipeTotalNutrientsNIA? NIA;
  RecipeModelHitsRecipeTotalNutrientsVITB6A? VITB6A;
  RecipeModelHitsRecipeTotalNutrientsFOLDFE? FOLDFE;
  RecipeModelHitsRecipeTotalNutrientsFOLFD? FOLFD;
  RecipeModelHitsRecipeTotalNutrientsFOLAC? FOLAC;
  RecipeModelHitsRecipeTotalNutrientsVITB12? VITB12;
  RecipeModelHitsRecipeTotalNutrientsVITD? VITD;
  RecipeModelHitsRecipeTotalNutrientsTOCPHA? TOCPHA;
  RecipeModelHitsRecipeTotalNutrientsVITK1? VITK1;
  RecipeModelHitsRecipeTotalNutrientsWATER? WATER;

  RecipeModelHitsRecipeTotalNutrients({
    this.ENERCKCAL,
    this.FAT,
    this.FASAT,
    this.FATRN,
    this.FAMS,
    this.FAPU,
    this.CHOCDF,
    this.FIBTG,
    this.SUGAR,
    this.PROCNT,
    this.CHOLE,
    this.NA,
    this.CA,
    this.MG,
    this.K,
    this.FE,
    this.ZN,
    this.P,
    this.VITARAE,
    this.VITC,
    this.THIA,
    this.RIBF,
    this.NIA,
    this.VITB6A,
    this.FOLDFE,
    this.FOLFD,
    this.FOLAC,
    this.VITB12,
    this.VITD,
    this.TOCPHA,
    this.VITK1,
    this.WATER,
  });
  RecipeModelHitsRecipeTotalNutrients.fromJson(Map<String, dynamic> json) {
    ENERCKCAL = (json["ENERC_KCAL"] != null) ? RecipeModelHitsRecipeTotalNutrientsENERCKCAL.fromJson(json["ENERC_KCAL"]) : null;
    FAT = (json["FAT"] != null) ? RecipeModelHitsRecipeTotalNutrientsFAT.fromJson(json["FAT"]) : null;
    FASAT = (json["FASAT"] != null) ? RecipeModelHitsRecipeTotalNutrientsFASAT.fromJson(json["FASAT"]) : null;
    FATRN = (json["FATRN"] != null) ? RecipeModelHitsRecipeTotalNutrientsFATRN.fromJson(json["FATRN"]) : null;
    FAMS = (json["FAMS"] != null) ? RecipeModelHitsRecipeTotalNutrientsFAMS.fromJson(json["FAMS"]) : null;
    FAPU = (json["FAPU"] != null) ? RecipeModelHitsRecipeTotalNutrientsFAPU.fromJson(json["FAPU"]) : null;
    CHOCDF = (json["CHOCDF"] != null) ? RecipeModelHitsRecipeTotalNutrientsCHOCDF.fromJson(json["CHOCDF"]) : null;
    FIBTG = (json["FIBTG"] != null) ? RecipeModelHitsRecipeTotalNutrientsFIBTG.fromJson(json["FIBTG"]) : null;
    SUGAR = (json["SUGAR"] != null) ? RecipeModelHitsRecipeTotalNutrientsSUGAR.fromJson(json["SUGAR"]) : null;
    PROCNT = (json["PROCNT"] != null) ? RecipeModelHitsRecipeTotalNutrientsPROCNT.fromJson(json["PROCNT"]) : null;
    CHOLE = (json["CHOLE"] != null) ? RecipeModelHitsRecipeTotalNutrientsCHOLE.fromJson(json["CHOLE"]) : null;
    NA = (json["NA"] != null) ? RecipeModelHitsRecipeTotalNutrientsNA.fromJson(json["NA"]) : null;
    CA = (json["CA"] != null) ? RecipeModelHitsRecipeTotalNutrientsCA.fromJson(json["CA"]) : null;
    MG = (json["MG"] != null) ? RecipeModelHitsRecipeTotalNutrientsMG.fromJson(json["MG"]) : null;
    K = (json["K"] != null) ? RecipeModelHitsRecipeTotalNutrientsK.fromJson(json["K"]) : null;
    FE = (json["FE"] != null) ? RecipeModelHitsRecipeTotalNutrientsFE.fromJson(json["FE"]) : null;
    ZN = (json["ZN"] != null) ? RecipeModelHitsRecipeTotalNutrientsZN.fromJson(json["ZN"]) : null;
    P = (json["P"] != null) ? RecipeModelHitsRecipeTotalNutrientsP.fromJson(json["P"]) : null;
    VITARAE = (json["VITA_RAE"] != null) ? RecipeModelHitsRecipeTotalNutrientsVITARAE.fromJson(json["VITA_RAE"]) : null;
    VITC = (json["VITC"] != null) ? RecipeModelHitsRecipeTotalNutrientsVITC.fromJson(json["VITC"]) : null;
    THIA = (json["THIA"] != null) ? RecipeModelHitsRecipeTotalNutrientsTHIA.fromJson(json["THIA"]) : null;
    RIBF = (json["RIBF"] != null) ? RecipeModelHitsRecipeTotalNutrientsRIBF.fromJson(json["RIBF"]) : null;
    NIA = (json["NIA"] != null) ? RecipeModelHitsRecipeTotalNutrientsNIA.fromJson(json["NIA"]) : null;
    VITB6A = (json["VITB6A"] != null) ? RecipeModelHitsRecipeTotalNutrientsVITB6A.fromJson(json["VITB6A"]) : null;
    FOLDFE = (json["FOLDFE"] != null) ? RecipeModelHitsRecipeTotalNutrientsFOLDFE.fromJson(json["FOLDFE"]) : null;
    FOLFD = (json["FOLFD"] != null) ? RecipeModelHitsRecipeTotalNutrientsFOLFD.fromJson(json["FOLFD"]) : null;
    FOLAC = (json["FOLAC"] != null) ? RecipeModelHitsRecipeTotalNutrientsFOLAC.fromJson(json["FOLAC"]) : null;
    VITB12 = (json["VITB12"] != null) ? RecipeModelHitsRecipeTotalNutrientsVITB12.fromJson(json["VITB12"]) : null;
    VITD = (json["VITD"] != null) ? RecipeModelHitsRecipeTotalNutrientsVITD.fromJson(json["VITD"]) : null;
    TOCPHA = (json["TOCPHA"] != null) ? RecipeModelHitsRecipeTotalNutrientsTOCPHA.fromJson(json["TOCPHA"]) : null;
    VITK1 = (json["VITK1"] != null) ? RecipeModelHitsRecipeTotalNutrientsVITK1.fromJson(json["VITK1"]) : null;
    WATER = (json["WATER"] != null) ? RecipeModelHitsRecipeTotalNutrientsWATER.fromJson(json["WATER"]) : null;
  }

  get lst => null;
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (ENERCKCAL != null) {
      data["ENERC_KCAL"] = ENERCKCAL!.toJson();
    }
    if (FAT != null) {
      data["FAT"] = FAT!.toJson();
    }
    if (FASAT != null) {
      data["FASAT"] = FASAT!.toJson();
    }
    if (FATRN != null) {
      data["FATRN"] = FATRN!.toJson();
    }
    if (FAMS != null) {
      data["FAMS"] = FAMS!.toJson();
    }
    if (FAPU != null) {
      data["FAPU"] = FAPU!.toJson();
    }
    if (CHOCDF != null) {
      data["CHOCDF"] = CHOCDF!.toJson();
    }
    if (FIBTG != null) {
      data["FIBTG"] = FIBTG!.toJson();
    }
    if (SUGAR != null) {
      data["SUGAR"] = SUGAR!.toJson();
    }
    if (PROCNT != null) {
      data["PROCNT"] = PROCNT!.toJson();
    }
    if (CHOLE != null) {
      data["CHOLE"] = CHOLE!.toJson();
    }
    if (NA != null) {
      data["NA"] = NA!.toJson();
    }
    if (CA != null) {
      data["CA"] = CA!.toJson();
    }
    if (MG != null) {
      data["MG"] = MG!.toJson();
    }
    if (K != null) {
      data["K"] = K!.toJson();
    }
    if (FE != null) {
      data["FE"] = FE!.toJson();
    }
    if (ZN != null) {
      data["ZN"] = ZN!.toJson();
    }
    if (P != null) {
      data["P"] = P!.toJson();
    }
    if (VITARAE != null) {
      data["VITA_RAE"] = VITARAE!.toJson();
    }
    if (VITC != null) {
      data["VITC"] = VITC!.toJson();
    }
    if (THIA != null) {
      data["THIA"] = THIA!.toJson();
    }
    if (RIBF != null) {
      data["RIBF"] = RIBF!.toJson();
    }
    if (NIA != null) {
      data["NIA"] = NIA!.toJson();
    }
    if (VITB6A != null) {
      data["VITB6A"] = VITB6A!.toJson();
    }
    if (FOLDFE != null) {
      data["FOLDFE"] = FOLDFE!.toJson();
    }
    if (FOLFD != null) {
      data["FOLFD"] = FOLFD!.toJson();
    }
    if (FOLAC != null) {
      data["FOLAC"] = FOLAC!.toJson();
    }
    if (VITB12 != null) {
      data["VITB12"] = VITB12!.toJson();
    }
    if (VITD != null) {
      data["VITD"] = VITD!.toJson();
    }
    if (TOCPHA != null) {
      data["TOCPHA"] = TOCPHA!.toJson();
    }
    if (VITK1 != null) {
      data["VITK1"] = VITK1!.toJson();
    }
    if (WATER != null) {
      data["WATER"] = WATER!.toJson();
    }
    return data;
  }
}

class RecipeModelHitsRecipeIngredients {
  String? text;
  int? weight;
  String? foodCategory;
  String? foodId;
  String? image;

  RecipeModelHitsRecipeIngredients({
    this.text,
    this.weight,
    this.foodCategory,
    this.foodId,
    this.image,
  });
  RecipeModelHitsRecipeIngredients.fromJson(Map<String, dynamic> json) {
    text = json["text"]?.toString();
    weight = json["weight"]?.toInt();
    foodCategory = json["foodCategory"]?.toString();
    foodId = json["foodId"]?.toString();
    image = json["image"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["text"] = text;
    data["weight"] = weight;
    data["foodCategory"] = foodCategory;
    data["foodId"] = foodId;
    data["image"] = image;
    return data;
  }
}

class RecipeModelHitsRecipe {

  String? uri;
  String? label;
  String? image;
  String? source;
  String? url;
  String? shareAs;
  int? theYield;
  List<String?>? dietLabels;
  List<String?>? healthLabels;
  List<String?>? cautions;
  List<String?>? ingredientLines;
  List<RecipeModelHitsRecipeIngredients?>? ingredients;
  double? calories;
  double? totalWeight;
  int? totalTime;
  List<String?>? cuisineType;
  List<String?>? mealType;
  List<String?>? dishType;
  RecipeModelHitsRecipeTotalNutrients? totalNutrients;
  RecipeModelHitsRecipeTotalDaily? totalDaily;
  List<RecipeModelHitsRecipeDigest?>? digest;

  RecipeModelHitsRecipe({
    this.uri,
    this.label,
    this.image,
    this.source,
    this.url,
    this.shareAs,
    this.theYield,
    this.dietLabels,
    this.healthLabels,
    this.cautions,
    this.ingredientLines,
    this.ingredients,
    this.calories,
    this.totalWeight,
    this.totalTime,
    this.cuisineType,
    this.mealType,
    this.dishType,
    this.totalNutrients,
    this.totalDaily,
    this.digest,
  });
  RecipeModelHitsRecipe.fromJson(Map<String, dynamic> json) {
    uri = json["uri"]?.toString();
    label = json["label"]?.toString();
    image = json["image"]?.toString();
    source = json["source"]?.toString();
    url = json["url"]?.toString();
    shareAs = json["shareAs"]?.toString();
    theYield = json["yield"]?.toInt();
  if (json["dietLabels"] != null) {
  final v = json["dietLabels"];
  final arr0 = <String>[];
  v.forEach((v) {
  arr0.add(v.toString());
  });
    dietLabels = arr0;
    }
  if (json["healthLabels"] != null) {
  final v = json["healthLabels"];
  final arr0 = <String>[];
  v.forEach((v) {
  arr0.add(v.toString());
  });
    healthLabels = arr0;
    }
  if (json["cautions"] != null) {
  final v = json["cautions"];
  final arr0 = <String>[];
  v.forEach((v) {
  arr0.add(v.toString());
  });
    cautions = arr0;
    }
  if (json["ingredientLines"] != null) {
  final v = json["ingredientLines"];
  final arr0 = <String>[];
  v.forEach((v) {
  arr0.add(v.toString());
  });
    ingredientLines = arr0;
    }
  if (json["ingredients"] != null) {
  final v = json["ingredients"];
  final arr0 = <RecipeModelHitsRecipeIngredients>[];
  v.forEach((v) {
  arr0.add(RecipeModelHitsRecipeIngredients.fromJson(v));
  });
    ingredients = arr0;
    }
    calories = json["calories"]?.toDouble();
    totalWeight = json["totalWeight"]?.toDouble();
    totalTime = json["totalTime"]?.toInt();
  if (json["cuisineType"] != null) {
  final v = json["cuisineType"];
  final arr0 = <String>[];
  v.forEach((v) {
  arr0.add(v.toString());
  });
    cuisineType = arr0;
    }
  if (json["mealType"] != null) {
  final v = json["mealType"];
  final arr0 = <String>[];
  v.forEach((v) {
  arr0.add(v.toString());
  });
    mealType = arr0;
    }
  if (json["dishType"] != null) {
  final v = json["dishType"];
  final arr0 = <String>[];
  v.forEach((v) {
  arr0.add(v.toString());
  });
    dishType = arr0;
    }
    totalNutrients = (json["totalNutrients"] != null) ? RecipeModelHitsRecipeTotalNutrients.fromJson(json["totalNutrients"]) : null;
    totalDaily = (json["totalDaily"] != null) ? RecipeModelHitsRecipeTotalDaily.fromJson(json["totalDaily"]) : null;
  if (json["digest"] != null) {
  final v = json["digest"];
  final arr0 = <RecipeModelHitsRecipeDigest>[];
  v.forEach((v) {
  arr0.add(RecipeModelHitsRecipeDigest.fromJson(v));
  });
    digest = arr0;
    }
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["uri"] = uri;
    data["label"] = label;
    data["image"] = image;
    data["source"] = source;
    data["url"] = url;
    data["shareAs"] = shareAs;
    data["yield"] = theYield;
    if (dietLabels != null) {
      final v = dietLabels;
      final arr0 = [];
  v!.forEach((v) {
  arr0.add(v);
  });
      data["dietLabels"] = arr0;
    }
    if (healthLabels != null) {
      final v = healthLabels;
      final arr0 = [];
  v!.forEach((v) {
  arr0.add(v);
  });
      data["healthLabels"] = arr0;
    }
    if (cautions != null) {
      final v = cautions;
      final arr0 = [];
  v!.forEach((v) {
  arr0.add(v);
  });
      data["cautions"] = arr0;
    }
    if (ingredientLines != null) {
      final v = ingredientLines;
      final arr0 = [];
  v!.forEach((v) {
  arr0.add(v);
  });
      data["ingredientLines"] = arr0;
    }
    if (ingredients != null) {
      final v = ingredients;
      final arr0 = [];
  v!.forEach((v) {
  arr0.add(v!.toJson());
  });
      data["ingredients"] = arr0;
    }
    data["calories"] = calories;
    data["totalWeight"] = totalWeight;
    data["totalTime"] = totalTime;
    if (cuisineType != null) {
      final v = cuisineType;
      final arr0 = [];
  v!.forEach((v) {
  arr0.add(v);
  });
      data["cuisineType"] = arr0;
    }
    if (mealType != null) {
      final v = mealType;
      final arr0 = [];
  v!.forEach((v) {
  arr0.add(v);
  });
      data["mealType"] = arr0;
    }
    if (dishType != null) {
      final v = dishType;
      final arr0 = [];
  v!.forEach((v) {
  arr0.add(v);
  });
      data["dishType"] = arr0;
    }
    if (totalNutrients != null) {
      data["totalNutrients"] = totalNutrients!.toJson();
    }
    if (totalDaily != null) {
      data["totalDaily"] = totalDaily!.toJson();
    }
    if (digest != null) {
      final v = digest;
      final arr0 = [];
  v!.forEach((v) {
  arr0.add(v!.toJson());
  });
      data["digest"] = arr0;
    }
    return data;
  }
}

class RecipeModelHits {
/*
{
  "recipe": {
    "uri": "http://www.edamam.com/ontologies/edamam.owl#recipe_b79327d05b8e5b838ad6cfd9576b30b6",
    "label": "Chicken Vesuvio",
    "image": "https://www.edamam.com/web-img/e42/e42f9119813e890af34c259785ae1cfb.jpg",
    "source": "Serious Eats",
    "url": "http://www.seriouseats.com/recipes/2011/12/chicken-vesuvio-recipe.html",
    "shareAs": "http://www.edamam.com/recipe/chicken-vesuvio-b79327d05b8e5b838ad6cfd9576b30b6/chicken",
    "yield": 4,
    "dietLabels": [
      "Low-Carb"
    ],
    "healthLabels": [
      "Dairy-Free"
    ],
    "cautions": [
      "Sulfites"
    ],
    "ingredientLines": [
      "1/2 cup olive oil"
    ],
    "ingredients": [
      {
        "text": "1/2 cup olive oil",
        "weight": 108,
        "foodCategory": "Oils",
        "foodId": "food_b1d1icuad3iktrbqby0hiagafaz7",
        "image": null
      }
    ],
    "calories": 4228.043058200812,
    "totalWeight": 2976.8664549004047,
    "totalTime": 60,
    "cuisineType": [
      "italian"
    ],
    "mealType": [
      "lunch/dinner"
    ],
    "dishType": [
      "main course"
    ],
    "totalNutrients": {
      "ENERC_KCAL": {
        "label": "Energy",
        "quantity": 4228.043058200812,
        "unit": "kcal"
      },
      "FAT": {
        "label": "Fat",
        "quantity": 274.4489059026023,
        "unit": "g"
      },
      "FASAT": {
        "label": "Saturated",
        "quantity": 62.497618998656044,
        "unit": "g"
      },
      "FATRN": {
        "label": "Trans",
        "quantity": 1.047163345382,
        "unit": "g"
      },
      "FAMS": {
        "label": "Monounsaturated",
        "quantity": 147.39060633938868,
        "unit": "g"
      },
      "FAPU": {
        "label": "Polyunsaturated",
        "quantity": 47.35051984782951,
        "unit": "g"
      },
      "CHOCDF": {
        "label": "Carbs",
        "quantity": 175.96206666631727,
        "unit": "g"
      },
      "FIBTG": {
        "label": "Fiber",
        "quantity": 19.83181033081862,
        "unit": "g"
      },
      "SUGAR": {
        "label": "Sugars",
        "quantity": 16.239344767255698,
        "unit": "g"
      },
      "PROCNT": {
        "label": "Protein",
        "quantity": 230.72689680763318,
        "unit": "g"
      },
      "CHOLE": {
        "label": "Cholesterol",
        "quantity": 815.06238045,
        "unit": "mg"
      },
      "NA": {
        "label": "Sodium",
        "quantity": 6888.614561646296,
        "unit": "mg"
      },
      "CA": {
        "label": "Calcium",
        "quantity": 400.0807431570531,
        "unit": "mg"
      },
      "MG": {
        "label": "Magnesium",
        "quantity": 478.1771035229573,
        "unit": "mg"
      },
      "K": {
        "label": "Potassium",
        "quantity": 5918.1808352043345,
        "unit": "mg"
      },
      "FE": {
        "label": "Iron",
        "quantity": 22.546435238210286,
        "unit": "mg"
      },
      "ZN": {
        "label": "Zinc",
        "quantity": 18.341531378501646,
        "unit": "mg"
      },
      "P": {
        "label": "Phosphorus",
        "quantity": 2231.0712550999992,
        "unit": "mg"
      },
      "VITA_RAE": {
        "label": "Vitamin A",
        "quantity": 635.3716670147774,
        "unit": "µg"
      },
      "VITC": {
        "label": "Vitamin C",
        "quantity": 103.72979744959534,
        "unit": "mg"
      },
      "THIA": {
        "label": "Thiamin (B1)",
        "quantity": 1.7264528338354403,
        "unit": "mg"
      },
      "RIBF": {
        "label": "Riboflavin (B2)",
        "quantity": 1.9119200245119274,
        "unit": "mg"
      },
      "NIA": {
        "label": "Niacin (B3)",
        "quantity": 86.90416982948213,
        "unit": "mg"
      },
      "VITB6A": {
        "label": "Vitamin B6",
        "quantity": 6.886357390963229,
        "unit": "mg"
      },
      "FOLDFE": {
        "label": "Folate equivalent (total)",
        "quantity": 276.2712108159691,
        "unit": "µg"
      },
      "FOLFD": {
        "label": "Folate (food)",
        "quantity": 276.2712108159691,
        "unit": "µg"
      },
      "FOLAC": {
        "label": "Folic acid",
        "quantity": 0,
        "unit": "µg"
      },
      "VITB12": {
        "label": "Vitamin B12",
        "quantity": 3.34660450586,
        "unit": "µg"
      },
      "VITD": {
        "label": "Vitamin D",
        "quantity": 2.1590996812000003,
        "unit": "µg"
      },
      "TOCPHA": {
        "label": "Vitamin E",
        "quantity": 19.62869476856695,
        "unit": "mg"
      },
      "VITK1": {
        "label": "Vitamin K",
        "quantity": 353.31486385948267,
        "unit": "µg"
      },
      "WATER": {
        "label": "Water",
        "quantity": 1738.7966568296217,
        "unit": "g"
      }
    },
    "totalDaily": {
      "ENERC_KCAL": {
        "label": "Energy",
        "quantity": 211.4021529100406,
        "unit": "%"
      },
      "FAT": {
        "label": "Fat",
        "quantity": 422.2290860040035,
        "unit": "%"
      },
      "FASAT": {
        "label": "Saturated",
        "quantity": 312.48809499328024,
        "unit": "%"
      },
      "CHOCDF": {
        "label": "Carbs",
        "quantity": 58.65402222210575,
        "unit": "%"
      },
      "FIBTG": {
        "label": "Fiber",
        "quantity": 79.32724132327448,
        "unit": "%"
      },
      "PROCNT": {
        "label": "Protein",
        "quantity": 461.4537936152663,
        "unit": "%"
      },
      "CHOLE": {
        "label": "Cholesterol",
        "quantity": 271.68746015,
        "unit": "%"
      },
      "NA": {
        "label": "Sodium",
        "quantity": 287.0256067352624,
        "unit": "%"
      },
      "CA": {
        "label": "Calcium",
        "quantity": 40.008074315705315,
        "unit": "%"
      },
      "MG": {
        "label": "Magnesium",
        "quantity": 113.85169131498982,
        "unit": "%"
      },
      "K": {
        "label": "Potassium",
        "quantity": 125.9187411745603,
        "unit": "%"
      },
      "FE": {
        "label": "Iron",
        "quantity": 125.25797354561271,
        "unit": "%"
      },
      "ZN": {
        "label": "Zinc",
        "quantity": 166.74119435001495,
        "unit": "%"
      },
      "P": {
        "label": "Phosphorus",
        "quantity": 318.7244650142856,
        "unit": "%"
      },
      "VITA_RAE": {
        "label": "Vitamin A",
        "quantity": 70.59685189053081,
        "unit": "%"
      },
      "VITC": {
        "label": "Vitamin C",
        "quantity": 115.25533049955037,
        "unit": "%"
      },
      "THIA": {
        "label": "Thiamin (B1)",
        "quantity": 143.8710694862867,
        "unit": "%"
      },
      "RIBF": {
        "label": "Riboflavin (B2)",
        "quantity": 147.0707711163021,
        "unit": "%"
      },
      "NIA": {
        "label": "Niacin (B3)",
        "quantity": 543.1510614342633,
        "unit": "%"
      },
      "VITB6A": {
        "label": "Vitamin B6",
        "quantity": 529.7197993048637,
        "unit": "%"
      },
      "FOLDFE": {
        "label": "Folate equivalent (total)",
        "quantity": 69.06780270399227,
        "unit": "%"
      },
      "VITB12": {
        "label": "Vitamin B12",
        "quantity": 139.44185441083332,
        "unit": "%"
      },
      "VITD": {
        "label": "Vitamin D",
        "quantity": 14.393997874666669,
        "unit": "%"
      },
      "TOCPHA": {
        "label": "Vitamin E",
        "quantity": 130.85796512377968,
        "unit": "%"
      },
      "VITK1": {
        "label": "Vitamin K",
        "quantity": 294.42905321623556,
        "unit": "%"
      }
    },
    "digest": [
      {
        "label": "Fat",
        "tag": "FAT",
        "schemaOrgTag": "fatContent",
        "total": 274.4489059026023,
        "hasRDI": true,
        "daily": 422.2290860040035,
        "unit": "g",
        "sub": [
          {
            "label": "Saturated",
            "tag": "FASAT",
            "schemaOrgTag": "saturatedFatContent",
            "total": 62.497618998656044,
            "hasRDI": true,
            "daily": 312.48809499328024,
            "unit": "g"
          }
        ]
      }
    ]
  },
  "_links": {
    "self": {
      "href": "https://api.edamam.com/api/recipes/v2/b79327d05b8e5b838ad6cfd9576b30b6?type=public&app_id=20323ebc&app_key=%200a0599908c64087edb84d11dda4c8c8c",
      "title": "Self"
    }
  }
} 
*/

  RecipeModelHitsRecipe? recipe;
  RecipeModelHitsLinks? Links;

  RecipeModelHits({
    this.recipe,
    this.Links,
  });
  RecipeModelHits.fromJson(Map<String, dynamic> json) {
    recipe = (json["recipe"] != null) ? RecipeModelHitsRecipe.fromJson(json["recipe"]) : null;
    Links = (json["_links"] != null) ? RecipeModelHitsLinks.fromJson(json["_links"]) : null;
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (recipe != null) {
      data["recipe"] = recipe!.toJson();
    }
    if (Links != null) {
      data["_links"] = Links!.toJson();
    }
    return data;
  }
}

class RecipeModelLinksNext {
/*
{
  "href": "https://api.edamam.com/api/recipes/v2?q=chicken&app_key=%200a0599908c64087edb84d11dda4c8c8c&_cont=CHcVQBtNNQphDmgVQntAEX4BYldtBAEFQmNBA2MTZFFxBQsPUXlSB2AXZVJzUgIAEWFGBDcbZFclUQoBSm1FBmUVZ1MhAgAVLnlSVSBMPkd5BgMbUSYRVTdgMgksRlpSAAcRXTVGcV84SU4%3D&type=public&app_id=20323ebc",
  "title": "Next page"
} 
*/

  String? href;
  String? title;

  RecipeModelLinksNext({
    this.href,
    this.title,
  });
  RecipeModelLinksNext.fromJson(Map<String, dynamic> json) {
    href = json["href"]?.toString();
    title = json["title"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["href"] = href;
    data["title"] = title;
    return data;
  }
}

class RecipeModelLinks {
/*
{
  "next": {
    "href": "https://api.edamam.com/api/recipes/v2?q=chicken&app_key=%200a0599908c64087edb84d11dda4c8c8c&_cont=CHcVQBtNNQphDmgVQntAEX4BYldtBAEFQmNBA2MTZFFxBQsPUXlSB2AXZVJzUgIAEWFGBDcbZFclUQoBSm1FBmUVZ1MhAgAVLnlSVSBMPkd5BgMbUSYRVTdgMgksRlpSAAcRXTVGcV84SU4%3D&type=public&app_id=20323ebc",
    "title": "Next page"
  }
} 
*/

  RecipeModelLinksNext? next;

  RecipeModelLinks({
    this.next,
  });
  RecipeModelLinks.fromJson(Map<String, dynamic> json) {
    next = (json["next"] != null) ? RecipeModelLinksNext.fromJson(json["next"]) : null;
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (next != null) {
      data["next"] = next!.toJson();
    }
    return data;
  }
}

class RecipeModel {
/*
{
  "from": 1,
  "to": 20,
  "count": 10000,
  "_links": {
    "next": {
      "href": "https://api.edamam.com/api/recipes/v2?q=chicken&app_key=%200a0599908c64087edb84d11dda4c8c8c&_cont=CHcVQBtNNQphDmgVQntAEX4BYldtBAEFQmNBA2MTZFFxBQsPUXlSB2AXZVJzUgIAEWFGBDcbZFclUQoBSm1FBmUVZ1MhAgAVLnlSVSBMPkd5BgMbUSYRVTdgMgksRlpSAAcRXTVGcV84SU4%3D&type=public&app_id=20323ebc",
      "title": "Next page"
    }
  },
  "hits": [
    {
      "recipe": {
        "uri": "http://www.edamam.com/ontologies/edamam.owl#recipe_b79327d05b8e5b838ad6cfd9576b30b6",
        "label": "Chicken Vesuvio",
        "image": "https://www.edamam.com/web-img/e42/e42f9119813e890af34c259785ae1cfb.jpg",
        "source": "Serious Eats",
        "url": "http://www.seriouseats.com/recipes/2011/12/chicken-vesuvio-recipe.html",
        "shareAs": "http://www.edamam.com/recipe/chicken-vesuvio-b79327d05b8e5b838ad6cfd9576b30b6/chicken",
        "yield": 4,
        "dietLabels": [
          "Low-Carb"
        ],
        "healthLabels": [
          "Dairy-Free"
        ],
        "cautions": [
          "Sulfites"
        ],
        "ingredientLines": [
          "1/2 cup olive oil"
        ],
        "ingredients": [
          {
            "text": "1/2 cup olive oil",
            "weight": 108,
            "foodCategory": "Oils",
            "foodId": "food_b1d1icuad3iktrbqby0hiagafaz7",
            "image": null
          }
        ],
        "calories": 4228.043058200812,
        "totalWeight": 2976.8664549004047,
        "totalTime": 60,
        "cuisineType": [
          "italian"
        ],
        "mealType": [
          "lunch/dinner"
        ],
        "dishType": [
          "main course"
        ],
        "totalNutrients": {
          "ENERC_KCAL": {
            "label": "Energy",
            "quantity": 4228.043058200812,
            "unit": "kcal"
          },
          "FAT": {
            "label": "Fat",
            "quantity": 274.4489059026023,
            "unit": "g"
          },
          "FASAT": {
            "label": "Saturated",
            "quantity": 62.497618998656044,
            "unit": "g"
          },
          "FATRN": {
            "label": "Trans",
            "quantity": 1.047163345382,
            "unit": "g"
          },
          "FAMS": {
            "label": "Monounsaturated",
            "quantity": 147.39060633938868,
            "unit": "g"
          },
          "FAPU": {
            "label": "Polyunsaturated",
            "quantity": 47.35051984782951,
            "unit": "g"
          },
          "CHOCDF": {
            "label": "Carbs",
            "quantity": 175.96206666631727,
            "unit": "g"
          },
          "FIBTG": {
            "label": "Fiber",
            "quantity": 19.83181033081862,
            "unit": "g"
          },
          "SUGAR": {
            "label": "Sugars",
            "quantity": 16.239344767255698,
            "unit": "g"
          },
          "PROCNT": {
            "label": "Protein",
            "quantity": 230.72689680763318,
            "unit": "g"
          },
          "CHOLE": {
            "label": "Cholesterol",
            "quantity": 815.06238045,
            "unit": "mg"
          },
          "NA": {
            "label": "Sodium",
            "quantity": 6888.614561646296,
            "unit": "mg"
          },
          "CA": {
            "label": "Calcium",
            "quantity": 400.0807431570531,
            "unit": "mg"
          },
          "MG": {
            "label": "Magnesium",
            "quantity": 478.1771035229573,
            "unit": "mg"
          },
          "K": {
            "label": "Potassium",
            "quantity": 5918.1808352043345,
            "unit": "mg"
          },
          "FE": {
            "label": "Iron",
            "quantity": 22.546435238210286,
            "unit": "mg"
          },
          "ZN": {
            "label": "Zinc",
            "quantity": 18.341531378501646,
            "unit": "mg"
          },
          "P": {
            "label": "Phosphorus",
            "quantity": 2231.0712550999992,
            "unit": "mg"
          },
          "VITA_RAE": {
            "label": "Vitamin A",
            "quantity": 635.3716670147774,
            "unit": "µg"
          },
          "VITC": {
            "label": "Vitamin C",
            "quantity": 103.72979744959534,
            "unit": "mg"
          },
          "THIA": {
            "label": "Thiamin (B1)",
            "quantity": 1.7264528338354403,
            "unit": "mg"
          },
          "RIBF": {
            "label": "Riboflavin (B2)",
            "quantity": 1.9119200245119274,
            "unit": "mg"
          },
          "NIA": {
            "label": "Niacin (B3)",
            "quantity": 86.90416982948213,
            "unit": "mg"
          },
          "VITB6A": {
            "label": "Vitamin B6",
            "quantity": 6.886357390963229,
            "unit": "mg"
          },
          "FOLDFE": {
            "label": "Folate equivalent (total)",
            "quantity": 276.2712108159691,
            "unit": "µg"
          },
          "FOLFD": {
            "label": "Folate (food)",
            "quantity": 276.2712108159691,
            "unit": "µg"
          },
          "FOLAC": {
            "label": "Folic acid",
            "quantity": 0,
            "unit": "µg"
          },
          "VITB12": {
            "label": "Vitamin B12",
            "quantity": 3.34660450586,
            "unit": "µg"
          },
          "VITD": {
            "label": "Vitamin D",
            "quantity": 2.1590996812000003,
            "unit": "µg"
          },
          "TOCPHA": {
            "label": "Vitamin E",
            "quantity": 19.62869476856695,
            "unit": "mg"
          },
          "VITK1": {
            "label": "Vitamin K",
            "quantity": 353.31486385948267,
            "unit": "µg"
          },
          "WATER": {
            "label": "Water",
            "quantity": 1738.7966568296217,
            "unit": "g"
          }
        },
        "totalDaily": {
          "ENERC_KCAL": {
            "label": "Energy",
            "quantity": 211.4021529100406,
            "unit": "%"
          },
          "FAT": {
            "label": "Fat",
            "quantity": 422.2290860040035,
            "unit": "%"
          },
          "FASAT": {
            "label": "Saturated",
            "quantity": 312.48809499328024,
            "unit": "%"
          },
          "CHOCDF": {
            "label": "Carbs",
            "quantity": 58.65402222210575,
            "unit": "%"
          },
          "FIBTG": {
            "label": "Fiber",
            "quantity": 79.32724132327448,
            "unit": "%"
          },
          "PROCNT": {
            "label": "Protein",
            "quantity": 461.4537936152663,
            "unit": "%"
          },
          "CHOLE": {
            "label": "Cholesterol",
            "quantity": 271.68746015,
            "unit": "%"
          },
          "NA": {
            "label": "Sodium",
            "quantity": 287.0256067352624,
            "unit": "%"
          },
          "CA": {
            "label": "Calcium",
            "quantity": 40.008074315705315,
            "unit": "%"
          },
          "MG": {
            "label": "Magnesium",
            "quantity": 113.85169131498982,
            "unit": "%"
          },
          "K": {
            "label": "Potassium",
            "quantity": 125.9187411745603,
            "unit": "%"
          },
          "FE": {
            "label": "Iron",
            "quantity": 125.25797354561271,
            "unit": "%"
          },
          "ZN": {
            "label": "Zinc",
            "quantity": 166.74119435001495,
            "unit": "%"
          },
          "P": {
            "label": "Phosphorus",
            "quantity": 318.7244650142856,
            "unit": "%"
          },
          "VITA_RAE": {
            "label": "Vitamin A",
            "quantity": 70.59685189053081,
            "unit": "%"
          },
          "VITC": {
            "label": "Vitamin C",
            "quantity": 115.25533049955037,
            "unit": "%"
          },
          "THIA": {
            "label": "Thiamin (B1)",
            "quantity": 143.8710694862867,
            "unit": "%"
          },
          "RIBF": {
            "label": "Riboflavin (B2)",
            "quantity": 147.0707711163021,
            "unit": "%"
          },
          "NIA": {
            "label": "Niacin (B3)",
            "quantity": 543.1510614342633,
            "unit": "%"
          },
          "VITB6A": {
            "label": "Vitamin B6",
            "quantity": 529.7197993048637,
            "unit": "%"
          },
          "FOLDFE": {
            "label": "Folate equivalent (total)",
            "quantity": 69.06780270399227,
            "unit": "%"
          },
          "VITB12": {
            "label": "Vitamin B12",
            "quantity": 139.44185441083332,
            "unit": "%"
          },
          "VITD": {
            "label": "Vitamin D",
            "quantity": 14.393997874666669,
            "unit": "%"
          },
          "TOCPHA": {
            "label": "Vitamin E",
            "quantity": 130.85796512377968,
            "unit": "%"
          },
          "VITK1": {
            "label": "Vitamin K",
            "quantity": 294.42905321623556,
            "unit": "%"
          }
        },
        "digest": [
          {
            "label": "Fat",
            "tag": "FAT",
            "schemaOrgTag": "fatContent",
            "total": 274.4489059026023,
            "hasRDI": true,
            "daily": 422.2290860040035,
            "unit": "g",
            "sub": [
              {
                "label": "Saturated",
                "tag": "FASAT",
                "schemaOrgTag": "saturatedFatContent",
                "total": 62.497618998656044,
                "hasRDI": true,
                "daily": 312.48809499328024,
                "unit": "g"
              }
            ]
          }
        ]
      },
      "_links": {
        "self": {
          "href": "https://api.edamam.com/api/recipes/v2/b79327d05b8e5b838ad6cfd9576b30b6?type=public&app_id=20323ebc&app_key=%200a0599908c64087edb84d11dda4c8c8c",
          "title": "Self"
        }
      }
    }
  ]
} 
*/

  int? from;
  int? to;
  int? count;
  RecipeModelLinks? Links;
  List<RecipeModelHits?>? hits;

  RecipeModel({
    this.from,
    this.to,
    this.count,
    this.Links,
    this.hits,
  });
  RecipeModel.fromJson(Map<String, dynamic> json) {
    from = json["from"]?.toInt();
    to = json["to"]?.toInt();
    count = json["count"]?.toInt();
    Links = (json["_links"] != null) ? RecipeModelLinks.fromJson(json["_links"]) : null;
  if (json["hits"] != null) {
  final v = json["hits"];
  final arr0 = <RecipeModelHits>[];
  v.forEach((v) {
  arr0.add(RecipeModelHits.fromJson(v));
  });
    hits = arr0;
    }
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["from"] = from;
    data["to"] = to;
    data["count"] = count;
    if (Links != null) {
      data["_links"] = Links!.toJson();
    }
    if (hits != null) {
      final v = hits;
      final arr0 = [];
  v!.forEach((v) {
  arr0.add(v!.toJson());
  });
      data["hits"] = arr0;
    }
    return data;
  }
}
