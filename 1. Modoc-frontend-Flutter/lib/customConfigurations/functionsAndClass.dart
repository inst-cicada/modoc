//the variable to post for prediction in flask
List<String> symptoms=[];


//The class for the form
class theForm{
  final int position;
  final String question;
  final String choice1;
  final func1;
  final notfunc1;
  final String choice2;
  final func2;
  final notfunc2;
  final String choice3;
  final func3;
  final notfunc3;
  final String choice4;
  final func4;
  final notfunc4;
  final String choice5;
  final func5;
  final notfunc5;
  final String choice6;
  final func6;
  final notfunc6;
  final String choice7;
  final func7;
  final notfunc7;
  final String choice8;
  final func8;
  final notfunc8;
  final String choice9;
  final func9;
  final notfunc9;
  final String choice10;
  final func10;
  final notfunc10;
  final String choice11;
  final func11;
  final notfunc11;
  final String choice12;
  final func12;
  final notfunc12;
  theForm(
  this.position,{
  this.question,
        this.choice1,
        this.func1,
        this.notfunc1,
        this.choice2,
        this.func2,
        this.notfunc2,
        this.choice3,
        this.func3,
        this.notfunc3,
        this.choice4,
        this.func4,
        this.notfunc4,
        this.choice5,
        this.func5,
        this.notfunc5,
        this.choice6,
        this.func6,
        this.notfunc6,
        this.choice7,
        this.func7,
        this.notfunc7,
        this.choice8,
        this.func8,
        this.notfunc8,
        this.choice9,
        this.func9,
        this.notfunc9,
        this.choice10,
        this.func10,
        this.notfunc10,
        this.choice11,
        this.func11,
        this.notfunc11,
        this.choice12,
        this.func12,
        this.notfunc12,
  });
}


List<theForm> formData=[
  theForm(
    1,
    question:"Select your symptoms:",
    choice1: "Itching",
    func1: (){
      symptoms.add("Itching");
    },
    notfunc1: (){
      if(symptoms.contains("Itching")){
        symptoms.remove("Itching");
      }
      else{
        null;
      }
    },
    choice2: "Skin Rash",
    func2: (){
      symptoms.add("Skin Rash");
    },
    notfunc2: (){
      if(symptoms.contains("Skin Rash")){
        symptoms.remove("Skin Rash");
      }
      else{
        null;
      }
    },
    choice3: "Nodal Skin Eruptions",
    func3: (){
      symptoms.add("Nodal Skin Eruptions");
    },
    notfunc3: (){
      if(symptoms.contains("Nodal Skin Eruptions")){
        symptoms.remove("Nodal Skin Eruptions");
      }
      else{
        null;
      }
    },
    choice4: "Continuous Sneezing",
    func4: (){
      symptoms.add("Continuous Sneezing");
    },
    notfunc4: (){
      if(symptoms.contains("Continuous Sneezing")){
        symptoms.remove("Continuous Sneezing");
      }
      else{
        null;
      }
    },
    choice5: "Shivering",
    func5: (){
      symptoms.add("Shivering");
    },
    notfunc5: (){
      if(symptoms.contains("Shivering")){
        symptoms.remove("Shivering");
      }
      else{
        null;
      }
    },
    choice6: "Chills",
    func6: (){
      symptoms.add("Chills");
    },
    notfunc6: (){
      if(symptoms.contains("Chills")){
        symptoms.remove("Chills");
      }
      else{
        null;
      }
    },
    choice7: "Joint Pain",
    func7: (){
      symptoms.add("Joint Pain");
    },
    notfunc7: (){
      if(symptoms.contains("Joint Pain")){
        symptoms.remove("Joint Pain");
      }
      else{
        null;
      }
    },
    choice8: "Stomach Pain",
    func8: (){
      symptoms.add("Stomach Pain");
    },
    notfunc8: (){
      if(symptoms.contains("Stomach Pain")){
        symptoms.remove("Stomach Pain");
      }
      else{
        null;
      }
    },
    choice9: "Acidity",
    func9: (){
      symptoms.add("Acidity");
    },
    notfunc9: (){
      if(symptoms.contains("Acidity")){
        symptoms.remove("Acidity");
      }
      else{
        null;
      }
    },
    choice10: "Ulcers On Tongue",
    func10: (){
      symptoms.add("Ulcers On Tongue");
    },
    notfunc10: (){
      if(symptoms.contains("Ulcers On Tongue")){
        symptoms.remove("Ulcers On Tongue");
      }
      else{
        null;
      }
    },
    choice11: "Muscle Wasting",
    func11: (){
      symptoms.add("Muscle Wasting");
    },
    notfunc11: (){
      if(symptoms.contains("Muscle Wasting")){
        symptoms.remove("Muscle Wasting");
      }
      else{
        null;
      }
    },
    choice12: "Vomiting",
    func12: (){
      symptoms.add("Vomiting");
    },
    notfunc12: (){
      if(symptoms.contains("Vomiting")){
        symptoms.remove("Vomiting");
      }
      else{
        null;
      }
    },
  ),
  theForm(
    2,
    question:"Select your symptoms:",
    choice1: "Burning Micturition",
    func1: (){
      symptoms.add("Burning Micturition");
    },
    notfunc1: (){
      if(symptoms.contains("Burning Micturition")){
        symptoms.remove("Burning Micturition");
      }
      else{
        null;
      }
    },
    choice2: "Spotting Urination",
    func2: (){
      symptoms.add("Spotting Urination");
    },
    notfunc2: (){
      if(symptoms.contains("Spotting Urination")){
        symptoms.remove("Spotting Urination");
      }
      else{
        null;
      }
    },
    choice3: "Fatigue",
    func3: (){
      symptoms.add("Fatigue");
    },
    notfunc3: (){
      if(symptoms.contains("Fatigue")){
        symptoms.remove("Fatigue");
      }
      else{
        null;
      }
    },
    choice4: "Weight Gain",
    func4: (){
      symptoms.add("Weight Gain");
    },
    notfunc4: (){
      if(symptoms.contains("Weight Gain")){
        symptoms.remove("Weight Gain");
      }
      else{
        null;
      }
    },
    choice5: "Anxiety",
    func5: (){
      symptoms.add("Anxiety");
    },
    notfunc5: (){
      if(symptoms.contains("Anxiety")){
        symptoms.remove("Anxiety");
      }
      else{
        null;
      }
    },
    choice6: "Cold Hands And Feets",
    func6: (){
      symptoms.add("Cold Hands And Feets");
    },
    notfunc6: (){
      if(symptoms.contains("Cold Hands And Feets")){
        symptoms.remove("Cold Hands And Feets");
      }
      else{
        null;
      }
    },
    choice7: "Mood Swings",
    func7: (){
      symptoms.add("Mood Swings");
    },
    notfunc7: (){
      if(symptoms.contains("Mood Swings")){
        symptoms.remove("Mood Swings");
      }
      else{
        null;
      }
    },
    choice8: "Weight Loss",
    func8: (){
      symptoms.add("Weight Loss");
    },
    notfunc8: (){
      if(symptoms.contains("Weight Loss")){
        symptoms.remove("Weight Loss");
      }
      else{
        null;
      }
    },
    choice9: "Restlessness",
    func9: (){
      symptoms.add("Restlessness");
    },
    notfunc9: (){
      if(symptoms.contains("Restlessness")){
        symptoms.remove("Restlessness");
      }
      else{
        null;
      }
    },
    choice10: "Lethargy",
    func10: (){
      symptoms.add("Lethargy");
    },
    notfunc10: (){
      if(symptoms.contains("Lethargy")){
        symptoms.remove("Lethargy");
      }
      else{
        null;
      }
    },
    choice11: "Patches In Throat",
    func11: (){
      symptoms.add("Patches In Throat");
    },
    notfunc11: (){
      if(symptoms.contains("Patches In Throat")){
        symptoms.remove("Patches In Throat");
      }
      else{
        null;
      }
    },
    choice12: "Irregular Sugar Level",
    func12: (){
      symptoms.add("Irregular Sugar Level");
    },
    notfunc12: (){
      if(symptoms.contains("Irregular Sugar Level")){
        symptoms.remove("Irregular Sugar Level");
      }
      else{
        null;
      }
    },
  ),
  theForm(
    3,
    question:"Select your symptoms:",
    choice1: "Cough",
    func1: (){
      symptoms.add("Cough");
    },
    notfunc1: (){
      if(symptoms.contains("Cough")){
        symptoms.remove("Cough");
      }
      else{
        null;
      }
    },
    choice2: "High Fever",
    func2: (){
      symptoms.add("High Fever");
    },
    notfunc2: (){
      if(symptoms.contains("High Fever")){
        symptoms.remove("High Fever");
      }
      else{
        null;
      }
    },
    choice3: "Sunken Eyes",
    func3: (){
      symptoms.add("Sunken Eyes");
    },
    notfunc3: (){
      if(symptoms.contains("Sunken Eyes")){
        symptoms.remove("Sunken Eyes");
      }
      else{
        null;
      }
    },
    choice4: "Breathlessness",
    func4: (){
      symptoms.add("Breathlessness");
    },
    notfunc4: (){
      if(symptoms.contains("Breathlessness")){
        symptoms.remove("Breathlessness");
      }
      else{
        null;
      }
    },
    choice5: "Sweating",
    func5: (){
      symptoms.add("Sweating");
    },
    notfunc5: (){
      if(symptoms.contains("Sweating")){
        symptoms.remove("Sweating");
      }
      else{
        null;
      }
    },
    choice6: "Dehydration",
    func6: (){
      symptoms.add("Dehydration");
    },
    notfunc6: (){
      if(symptoms.contains("Dehydration")){
        symptoms.remove("Dehydration");
      }
      else{
        null;
      }
    },
    choice7: "Indigestion",
    func7: (){
      symptoms.add("Indigestion");
    },
    notfunc7: (){
      if(symptoms.contains("Indigestion")){
        symptoms.remove("Indigestion");
      }
      else{
        null;
      }
    },
    choice8: "Headache",
    func8: (){
      symptoms.add("Headache");
    },
    notfunc8: (){
      if(symptoms.contains("Headache")){
        symptoms.remove("Headache");
      }
      else{
        null;
      }
    },
    choice9: "Yellowish Skin",
    func9: (){
      symptoms.add("Yellowish Skin");
    },
    notfunc9: (){
      if(symptoms.contains("Yellowish Skin")){
        symptoms.remove("Yellowish Skin");
      }
      else{
        null;
      }
    },
    choice10: "Dark Urine",
    func10: (){
      symptoms.add("Dark Urine");
    },
    notfunc10: (){
      if(symptoms.contains("Dark Urine")){
        symptoms.remove("Dark Urine");
      }
      else{
        null;
      }
    },
    choice11: "Nausea",
    func11: (){
      symptoms.add("Nausea");
    },
    notfunc11: (){
      if(symptoms.contains("Nausea")){
        symptoms.remove("Nausea");
      }
      else{
        null;
      }
    },
    choice12: "Loss Of Appetite",
    func12: (){
      symptoms.add("Loss Of Appetite");
    },
    notfunc12: (){
      if(symptoms.contains("Loss Of Appetite")){
        symptoms.remove("Loss Of Appetite");
      }
      else{
        null;
      }
    },
  ),
  theForm(
    4,
    question:"Select your symptoms:",
    choice1: "Pain Behind The Eyes",
    func1: (){
      symptoms.add("Pain Behind The Eyes");
    },
    notfunc1: (){
      if(symptoms.contains("Pain Behind The Eyes")){
        symptoms.remove("Pain Behind The Eyes");
      }
      else{
        null;
      }
    },
    choice2: "Back Pain",
    func2: (){
      symptoms.add("Back Pain");
    },
    notfunc2: (){
      if(symptoms.contains("Back Pain")){
        symptoms.remove("Back Pain");
      }
      else{
        null;
      }
    },
    choice3: "Constipation",
    func3: (){
      symptoms.add("Constipation");
    },
    notfunc3: (){
      if(symptoms.contains("Constipation")){
        symptoms.remove("Constipation");
      }
      else{
        null;
      }
    },
    choice4: "Abdominal Pain",
    func4: (){
      symptoms.add("Abdominal Pain");
    },
    notfunc4: (){
      if(symptoms.contains("Abdominal Pain")){
        symptoms.remove("Abdominal Pain");
      }
      else{
        null;
      }
    },
    choice5: "Diarrhoea",
    func5: (){
      symptoms.add("Diarrhoea");
    },
    notfunc5: (){
      if(symptoms.contains("Diarrhoea")){
        symptoms.remove("Diarrhoea");
      }
      else{
        null;
      }
    },
    choice6: "Mild Fever",
    func6: (){
      symptoms.add("Mild Fever");
    },
    notfunc6: (){
      if(symptoms.contains("Mild Fever")){
        symptoms.remove("Mild Fever");
      }
      else{
        null;
      }
    },
    choice7: "Yellow Urine",
    func7: (){
      symptoms.add("Yellow Urine");
    },
    notfunc7: (){
      if(symptoms.contains("Yellow Urine")){
        symptoms.remove("Yellow Urine");
      }
      else{
        null;
      }
    },
    choice8: "Yellowing Of Eyes",
    func8: (){
      symptoms.add("Yellowing Of Eyes");
    },
    notfunc8: (){
      if(symptoms.contains("Yellowing Of Eyes")){
        symptoms.remove("Yellowing Of Eyes");
      }
      else{
        null;
      }
    },
    choice9: "Acute Liver Failure",
    func9: (){
      symptoms.add("Acute Liver Failure");
    },
    notfunc9: (){
      if(symptoms.contains("Acute Liver Failure")){
        symptoms.remove("Acute Liver Failure");
      }
      else{
        null;
      }
    },
    choice10: "Fluid Overload",
    func10: (){
      symptoms.add("Fluid Overload");
    },
    notfunc10: (){
      if(symptoms.contains("Fluid Overload")){
        symptoms.remove("Fluid Overload");
      }
      else{
        null;
      }
    },
    choice11: "Swelling Of Stomach",
    func11: (){
      symptoms.add("Swelling Of Stomach");
    },
    notfunc11: (){
      if(symptoms.contains("Swelling Of Stomach")){
        symptoms.remove("Swelling Of Stomach");
      }
      else{
        null;
      }
    },
    choice12: "Swelled Lymph Nodes",
    func12: (){
      symptoms.add("Swelled Lymph Nodes");
    },
    notfunc12: (){
      if(symptoms.contains("Swelled Lymph Nodes")){
        symptoms.remove("Swelled Lymph Nodes");
      }
      else{
        null;
      }
    },
  ),
  theForm(
    5,
    question:"Select your symptoms:",
    choice1: "Malaise",
    func1: (){
      symptoms.add("Malaise");
    },
    notfunc1: (){
      if(symptoms.contains("Malaise")){
        symptoms.remove("Malaise");
      }
      else{
        null;
      }
    },
    choice2: "Blurred And Distorted\n Vision",
    func2: (){
      symptoms.add("Blurred And Distorted Vision");
    },
    notfunc2: (){
      if(symptoms.contains("Blurred And Distorted Vision")){
        symptoms.remove("Blurred And Distorted Vision");
      }
      else{
        null;
      }
    },
    choice3: "Phlegm",
    func3: (){
      symptoms.add("Phlegm");
    },
    notfunc3: (){
      if(symptoms.contains("Phlegm")){
        symptoms.remove("Phlegm");
      }
      else{
        null;
      }
    },
    choice4: "Throat Irritation",
    func4: (){
      symptoms.add("Throat Irritation");
    },
    notfunc4: (){
      if(symptoms.contains("Throat Irritation")){
        symptoms.remove("Throat Irritation");
      }
      else{
        null;
      }
    },
    choice5: "Redness Of Eyes",
    func5: (){
      symptoms.add("Redness Of Eyes");
    },
    notfunc5: (){
      if(symptoms.contains("Redness Of Eyes")){
        symptoms.remove("Redness Of Eyes");
      }
      else{
        null;
      }
    },
    choice6: "Sinus Pressure",
    func6: (){
      symptoms.add("Sinus Pressure");
    },
    notfunc6: (){
      if(symptoms.contains("Sinus Pressure")){
        symptoms.remove("Sinus Pressure");
      }
      else{
        null;
      }
    },
    choice7: "Runny Nose",
    func7: (){
      symptoms.add("Runny Nose");
    },
    notfunc7: (){
      if(symptoms.contains("Runny Nose")){
        symptoms.remove("Runny Nose");
      }
      else{
        null;
      }
    },
    choice8: "Congestion",
    func8: (){
      symptoms.add("Congestion");
    },
    notfunc8: (){
      if(symptoms.contains("Congestion")){
        symptoms.remove("Congestion");
      }
      else{
        null;
      }
    },
    choice9: "Chest Pain",
    func9: (){
      symptoms.add("Chest Pain");
    },
    notfunc9: (){
      if(symptoms.contains("Chest Pain")){
        symptoms.remove("Chest Pain");
      }
      else{
        null;
      }
    },
    choice10: "Weakness In Limbs",
    func10: (){
      symptoms.add("Weakness In Limbs");
    },
    notfunc10: (){
      if(symptoms.contains("Weakness In Limbs")){
        symptoms.remove("Weakness In Limbs");
      }
      else{
        null;
      }
    },
    choice11: "Fast Heart Rate",
    func11: (){
      symptoms.add("Fast Heart Rate");
    },
    notfunc11: (){
      if(symptoms.contains("Fast Heart Rate")){
        symptoms.remove("Fast Heart Rate");
      }
      else{
        null;
      }
    },
    choice12: "Pain During \nBowel Movements",
    func12: (){
      symptoms.add("Pain During Bowel Movements");
    },
    notfunc12: (){
      if(symptoms.contains("Pain During Bowel Movements")){
        symptoms.remove("Pain During Bowel Movements");
      }
      else{
        null;
      }
    },
  ),
  theForm(
    6,
    question:"Select your symptoms:",
    choice1: "Pain In Anal Region",
    func1: (){
      symptoms.add("Pain In Anal Region");
    },
    notfunc1: (){
      if(symptoms.contains("Pain In Anal Region")){
        symptoms.remove("Pain In Anal Region");
      }
      else{
        null;
      }
    },
    choice2: "Bloody Stool",
    func2: (){
      symptoms.add("Bloody Stool");
    },
    notfunc2: (){
      if(symptoms.contains("Bloody Stool")){
        symptoms.remove("Bloody Stool");
      }
      else{
        null;
      }
    },
    choice3: "Irritation In Anus",
    func3: (){
      symptoms.add("Irritation In Anus");
    },
    notfunc3: (){
      if(symptoms.contains("Irritation In Anus")){
        symptoms.remove("Irritation In Anus");
      }
      else{
        null;
      }
    },
    choice4: "Neck Pain",
    func4: (){
      symptoms.add("Neck Pain");
    },
    notfunc4: (){
      if(symptoms.contains("Neck Pain")){
        symptoms.remove("Neck Pain");
      }
      else{
        null;
      }
    },
    choice5: "Dizziness",
    func5: (){
      symptoms.add("Dizziness");
    },
    notfunc5: (){
      if(symptoms.contains("Dizziness")){
        symptoms.remove("Dizziness");
      }
      else{
        null;
      }
    },
    choice6: "Cramps",
    func6: (){
      symptoms.add("Cramps");
    },
    notfunc6: (){
      if(symptoms.contains("Cramps")){
        symptoms.remove("Cramps");
      }
      else{
        null;
      }
    },
    choice7: "Bruising",
    func7: (){
      symptoms.add("Bruising");
    },
    notfunc7: (){
      if(symptoms.contains("Bruising")){
        symptoms.remove("Bruising");
      }
      else{
        null;
      }
    },
    choice8: "Obesity",
    func8: (){
      symptoms.add("Obesity");
    },
    notfunc8: (){
      if(symptoms.contains("Obesity")){
        symptoms.remove("Obesity");
      }
      else{
        null;
      }
    },
    choice9: "Swollen Legs",
    func9: (){
      symptoms.add("Swollen Legs");
    },
    notfunc9: (){
      if(symptoms.contains("Swollen Legs")){
        symptoms.remove("Swollen Legs");
      }
      else{
        null;
      }
    },
    choice10: "Swollen Blood Vessels",
    func10: (){
      symptoms.add("Swollen Blood Vessels");
    },
    notfunc10: (){
      if(symptoms.contains("Swollen Blood Vessels")){
        symptoms.remove("Swollen Blood Vessels");
      }
      else{
        null;
      }
    },
    choice11: "Puffy Face And Eyes",
    func11: (){
      symptoms.add("Puffy Face And Eyes");
    },
    notfunc11: (){
      if(symptoms.contains("Puffy Face And Eyes")){
        symptoms.remove("Puffy Face And Eyes");
      }
      else{
        null;
      }
    },
    choice12: "Enlarged Thyroid",
    func12: (){
      symptoms.add("Enlarged Thyroid");
    },
    notfunc12: (){
      if(symptoms.contains("Enlarged Thyroid")){
        symptoms.remove("Enlarged Thyroid");
      }
      else{
        null;
      }
    },
  ),
  theForm(
    7,
    question:"Select your symptoms:",
    choice1: "Brittle Nails",
    func1: (){
      symptoms.add("Brittle Nails");
    },
    notfunc1: (){
      if(symptoms.contains("Brittle Nails")){
        symptoms.remove("Brittle Nails");
      }
      else{
        null;
      }
    },
    choice2: "Swollen Extremeties",
    func2: (){
      symptoms.add("Swollen Extremeties");
    },
    notfunc2: (){
      if(symptoms.contains("Swollen Extremeties")){
        symptoms.remove("Swollen Extremeties");
      }
      else{
        null;
      }
    },
    choice3: "Excessive Hunger",
    func3: (){
      symptoms.add("Excessive Hunger");
    },
    notfunc3: (){
      if(symptoms.contains("Excessive Hunger")){
        symptoms.remove("Excessive Hunger");
      }
      else{
        null;
      }
    },
    choice4: "Extra Marital Contacts",
    func4: (){
      symptoms.add("Extra Marital Contacts");
    },
    notfunc4: (){
      if(symptoms.contains("Extra Marital Contacts")){
        symptoms.remove("Extra Marital Contacts");
      }
      else{
        null;
      }
    },
    choice5: "Drying And Tingling Lips",
    func5: (){
      symptoms.add("Drying And Tingling Lips");
    },
    notfunc5: (){
      if(symptoms.contains("Drying And Tingling Lips")){
        symptoms.remove("Drying And Tingling Lips");
      }
      else{
        null;
      }
    },
    choice6: "Slurred Speech",
    func6: (){
      symptoms.add("Slurred Speech");
    },
    notfunc6: (){
      if(symptoms.contains("Slurred Speech")){
        symptoms.remove("Slurred Speech");
      }
      else{
        null;
      }
    },
    choice7: "Knee Pain",
    func7: (){
      symptoms.add("Knee Pain");
    },
    notfunc7: (){
      if(symptoms.contains("Knee Pain")){
        symptoms.remove("Knee Pain");
      }
      else{
        null;
      }
    },
    choice8: "Hip Joint Pain",
    func8: (){
      symptoms.add("Hip Joint Pain");
    },
    notfunc8: (){
      if(symptoms.contains("Hip Joint Pain")){
        symptoms.remove("Hip Joint Pain");
      }
      else{
        null;
      }
    },
    choice9: "Muscle Weakness",
    func9: (){
      symptoms.add("Muscle Weakness");
    },
    notfunc9: (){
      if(symptoms.contains("Muscle Weakness")){
        symptoms.remove("Muscle Weakness");
      }
      else{
        null;
      }
    },
    choice10: "Stiff Neck",
    func10: (){
      symptoms.add("Stiff Neck");
    },
    notfunc10: (){
      if(symptoms.contains("Stiff Neck")){
        symptoms.remove("Stiff Neck");
      }
      else{
        null;
      }
    },
    choice11: "Swelling Joints",
    func11: (){
      symptoms.add("Swelling Joints");
    },
    notfunc11: (){
      if(symptoms.contains("Swelling Joints")){
        symptoms.remove("Swelling Joints");
      }
      else{
        null;
      }
    },
    choice12: "Movement Stiffness",
    func12: (){
      symptoms.add("Movement Stiffness");
    },
    notfunc12: (){
      if(symptoms.contains("Movement Stiffness")){
        symptoms.remove("Movement Stiffness");
      }
      else{
        null;
      }
    },
  ),
  theForm(
    8,
    question:"Select your symptoms:",
    choice1: "Spinning Movements",
    func1: (){
      symptoms.add("Spinning Movements");
    },
    notfunc1: (){
      if(symptoms.contains("Spinning Movements")){
        symptoms.remove("Spinning Movements");
      }
      else{
        null;
      }
    },
    choice2: "Loss Of Balance",
    func2: (){
      symptoms.add("Loss Of Balance");
    },
    notfunc2: (){
      if(symptoms.contains("Loss Of Balance")){
        symptoms.remove("Loss Of Balance");
      }
      else{
        null;
      }
    },
    choice3: "Unsteadiness",
    func3: (){
      symptoms.add("Unsteadiness");
    },
    notfunc3: (){
      if(symptoms.contains("Unsteadiness")){
        symptoms.remove("Unsteadiness");
      }
      else{
        null;
      }
    },
    choice4: "Weakness Of One\n Body Side",
    func4: (){
      symptoms.add("Weakness Of One Body Side");
    },
    notfunc4: (){
      if(symptoms.contains("Weakness Of One Body Side")){
        symptoms.remove("Weakness Of One Body Side");
      }
      else{
        null;
      }
    },
    choice5: "Loss Of Smell",
    func5: (){
      symptoms.add("Loss Of Smell");
    },
    notfunc5: (){
      if(symptoms.contains("Loss Of Smell")){
        symptoms.remove("Loss Of Smell");
      }
      else{
        null;
      }
    },
    choice6: "Bladder Discomfort",
    func6: (){
      symptoms.add("Bladder Discomfort");
    },
    notfunc6: (){
      if(symptoms.contains("Bladder Discomfort")){
        symptoms.remove("Bladder Discomfort");
      }
      else{
        null;
      }
    },
    choice7: "Foul Smell Of Urine",
    func7: (){
      symptoms.add("Foul Smell Of Urine");
    },
    notfunc7: (){
      if(symptoms.contains("Foul Smell Of Urine")){
        symptoms.remove("Foul Smell Of Urine");
      }
      else{
        null;
      }
    },
    choice8: "Continuous Feel Of\n Urine",
    func8: (){
      symptoms.add("Continuous Feel Of Urine");
    },
    notfunc8: (){
      if(symptoms.contains("Continuous Feel Of Urine")){
        symptoms.remove("Continuous Feel Of Urine");
      }
      else{
        null;
      }
    },
    choice9: "Passage Of Gases",
    func9: (){
      symptoms.add("Passage Of Gases");
    },
    notfunc9: (){
      if(symptoms.contains("Passage Of Gases")){
        symptoms.remove("Passage Of Gases");
      }
      else{
        null;
      }
    },
    choice10: "Internal Itching",
    func10: (){
      symptoms.add("Internal Itching");
    },
    notfunc10: (){
      if(symptoms.contains("Internal Itching")){
        symptoms.remove("Internal Itching");
      }
      else{
        null;
      }
    },
    choice11: "Toxic Look (typhos)",
    func11: (){
      symptoms.add("Toxic Look (typhos)");
    },
    notfunc11: (){
      if(symptoms.contains("Toxic Look (typhos)")){
        symptoms.remove("Toxic Look (typhos)");
      }
      else{
        null;
      }
    },
    choice12: "Depression",
    func12: (){
      symptoms.add("Depression");
    },
    notfunc12: (){
      if(symptoms.contains("Depression")){
        symptoms.remove("Depression");
      }
      else{
        null;
      }
    },
  ),
  theForm(
    9,
    question:"Select your symptoms:",
    choice1: "Irritability",
    func1: (){
      symptoms.add("Irritability");
    },
    notfunc1: (){
      if(symptoms.contains("Irritability")){
        symptoms.remove("Irritability");
      }
      else{
        null;
      }
    },
    choice2: "Muscle Pain",
    func2: (){
      symptoms.add("Muscle Pain");
    },
    notfunc2: (){
      if(symptoms.contains("Muscle Pain")){
        symptoms.remove("Muscle Pain");
      }
      else{
        null;
      }
    },
    choice3: "Altered Sensorium",
    func3: (){
      symptoms.add("Altered Sensorium");
    },
    notfunc3: (){
      if(symptoms.contains("Altered Sensorium")){
        symptoms.remove("Altered Sensorium");
      }
      else{
        null;
      }
    },
    choice4: "Red Spots Over Body",
    func4: (){
      symptoms.add("Red Spots Over Body");
    },
    notfunc4: (){
      if(symptoms.contains("Red Spots Over Body")){
        symptoms.remove("Red Spots Over Body");
      }
      else{
        null;
      }
    },
    choice5: "Belly Pain",
    func5: (){
      symptoms.add("Belly Pain");
    },
    notfunc5: (){
      if(symptoms.contains("Belly Pain")){
        symptoms.remove("Belly Pain");
      }
      else{
        null;
      }
    },
    choice6: "Abnormal Menstruation",
    func6: (){
      symptoms.add("Abnormal Menstruation");
    },
    notfunc6: (){
      if(symptoms.contains("Abnormal Menstruation")){
        symptoms.remove("Abnormal Menstruation");
      }
      else{
        null;
      }
    },
    choice7: "Dischromic Patches",
    func7: (){
      symptoms.add("Dischromic Patches");
    },
    notfunc7: (){
      if(symptoms.contains("Dischromic Patches")){
        symptoms.remove("Dischromic Patches");
      }
      else{
        null;
      }
    },
    choice8: "Watering From Eyes",
    func8: (){
      symptoms.add("Watering From Eyes");
    },
    notfunc8: (){
      if(symptoms.contains("Watering From Eyes")){
        symptoms.remove("Watering From Eyes");
      }
      else{
        null;
      }
    },
    choice9: "Increased Appetite",
    func9: (){
      symptoms.add("Increased Appetite");
    },
    notfunc9: (){
      if(symptoms.contains("Increased Appetite")){
        symptoms.remove("Increased Appetite");
      }
      else{
        null;
      }
    },
    choice10: "Polyuria",
    func10: (){
      symptoms.add("Polyuria");
    },
    notfunc10: (){
      if(symptoms.contains("Polyuria")){
        symptoms.remove("Polyuria");
      }
      else{
        null;
      }
    },
    choice11: "Family History",
    func11: (){
      symptoms.add("Family History");
    },
    notfunc11: (){
      if(symptoms.contains("Family History")){
        symptoms.remove("Family History");
      }
      else{
        null;
      }
    },
    choice12: "Mucoid Sputum",
    func12: (){
      symptoms.add("Mucoid Sputum");
    },
    notfunc12: (){
      if(symptoms.contains("Mucoid Sputum")){
        symptoms.remove("Mucoid Sputum");
      }
      else{
        null;
      }
    },
  ),
  theForm(
    10,
    question:"Select your symptoms:",
    choice1: "Rusty Sputum",
    func1: (){
      symptoms.add("Rusty Sputum");
    },
    notfunc1: (){
      if(symptoms.contains("Rusty Sputum")){
        symptoms.remove("Rusty Sputum");
      }
      else{
        null;
      }
    },
    choice2: "Lack Of\n Concentration",
    func2: (){
      symptoms.add("Lack Of Concentration");
    },
    notfunc2: (){
      if(symptoms.contains("Lack Of Concentration")){
        symptoms.remove("Lack Of Concentration");
      }
      else{
        null;
      }
    },
    choice3: "Visual Disturbances",
    func3: (){
      symptoms.add("Visual Disturbances");
    },
    notfunc3: (){
      if(symptoms.contains("Visual Disturbances")){
        symptoms.remove("Visual Disturbances");
      }
      else{
        null;
      }
    },
    choice4: "Receiving Blood\n Transfusion",
    func4: (){
      symptoms.add("Receiving Blood Transfusion");
    },
    notfunc4: (){
      if(symptoms.contains("Receiving Blood Transfusion")){
        symptoms.remove("Receiving Blood Transfusion");
      }
      else{
        null;
      }
    },
    choice5: "Receiving Unsterile\n Injections",
    func5: (){
      symptoms.add("Receiving Unsterile Injections");
    },
    notfunc5: (){
      if(symptoms.contains("Receiving Unsterile Injections")){
        symptoms.remove("Receiving Unsterile Injections");
      }
      else{
        null;
      }
    },
    choice6: "Coma",
    func6: (){
      symptoms.add("Coma");
    },
    notfunc6: (){
      if(symptoms.contains("Coma")){
        symptoms.remove("Coma");
      }
      else{
        null;
      }
    },
    choice7: "Stomach Bleeding",
    func7: (){
      symptoms.add("Stomach Bleeding");
    },
    notfunc7: (){
      if(symptoms.contains("Stomach Bleeding")){
        symptoms.remove("Stomach Bleeding");
      }
      else{
        null;
      }
    },
    choice8: "Distention Of\n Abdomen",
    func8: (){
      symptoms.add("Distention Of Abdomen");
    },
    notfunc8: (){
      if(symptoms.contains("Distention Of Abdomen")){
        symptoms.remove("Distention Of Abdomen");
      }
      else{
        null;
      }
    },
    choice9: "History Of Alcohol\n Consumption",
    func9: (){
      symptoms.add("History Of Alcohol Consumption");
    },
    notfunc9: (){
      if(symptoms.contains("History Of Alcohol Consumption")){
        symptoms.remove("History Of Alcohol Consumption");
      }
      else{
        null;
      }
    },
    choice10: "Fluid Overload.1",
    func10: (){
      symptoms.add("Fluid Overload.1");
    },
    notfunc10: (){
      if(symptoms.contains("Fluid Overload.1")){
        symptoms.remove("Fluid Overload.1");
      }
      else{
        null;
      }
    },
    choice11: "Blood In Sputum",
    func11: (){
      symptoms.add("Blood In Sputum");
    },
    notfunc11: (){
      if(symptoms.contains("Blood In Sputum")){
        symptoms.remove("Blood In Sputum");
      }
      else{
        null;
      }
    },
    choice12: "Prominent Veins On Calf",
    func12: (){
      symptoms.add("Prominent Veins On Calf");
    },
    notfunc12: (){
      if(symptoms.contains("Prominent Veins On Calf")){
        symptoms.remove("Prominent Veins On Calf");
      }
      else{
        null;
      }
    },
  ),
  theForm(
    11,
    question:"Select your symptoms:",
    choice1: "Palpitations",
    func1: (){
      symptoms.add("Palpitations");
    },
    notfunc1: (){
      if(symptoms.contains("Palpitations")){
        symptoms.remove("Palpitations");
      }
      else{
        null;
      }
    },
    choice2: "Painful Walking",
    func2: (){
      symptoms.add("Painful Walking");
    },
    notfunc2: (){
      if(symptoms.contains("Painful Walking")){
        symptoms.remove("Painful Walking");
      }
      else{
        null;
      }
    },
    choice3: "Pus Filled Pimples",
    func3: (){
      symptoms.add("Pus Filled Pimples");
    },
    notfunc3: (){
      if(symptoms.contains("Pus Filled Pimples")){
        symptoms.remove("Pus Filled Pimples");
      }
      else{
        null;
      }
    },
    choice4: "Blackheads",
    func4: (){
      symptoms.add("Blackheads");
    },
    notfunc4: (){
      if(symptoms.contains("Blackheads")){
        symptoms.remove("Blackheads");
      }
      else{
        null;
      }
    },
    choice5: "Scurring",
    func5: (){
      symptoms.add("Scurring");
    },
    notfunc5: (){
      if(symptoms.contains("Scurring")){
        symptoms.remove("Scurring");
      }
      else{
        null;
      }
    },
    choice6: "Skin Peeling",
    func6: (){
      symptoms.add("Skin Peeling");
    },
    notfunc6: (){
      if(symptoms.contains("Skin Peeling")){
        symptoms.remove("Skin Peeling");
      }
      else{
        null;
      }
    },
    choice7: "Silver Like Dusting",
    func7: (){
      symptoms.add("Silver Like Dusting");
    },
    notfunc7: (){
      if(symptoms.contains("Silver Like Dusting")){
        symptoms.remove("Silver Like Dusting");
      }
      else{
        null;
      }
    },
    choice8: "Small Dents In Nails",
    func8: (){
      symptoms.add("Small Dents In Nails");
    },
    notfunc8: (){
      if(symptoms.contains("Small Dents In Nails")){
        symptoms.remove("Small Dents In Nails");
      }
      else{
        null;
      }
    },
    choice9: "Inflammatory Nails",
    func9: (){
      symptoms.add("Inflammatory Nails");
    },
    notfunc9: (){
      if(symptoms.contains("Inflammatory Nails")){
        symptoms.remove("Inflammatory Nails");
      }
      else{
        null;
      }
    },
    choice10: "Blister",
    func10: (){
      symptoms.add("Blister");
    },
    notfunc10: (){
      if(symptoms.contains("Blister")){
        symptoms.remove("Blister");
      }
      else{
        null;
      }
    },
    choice11: "Red Sore Around Nose",
    func11: (){
      symptoms.add("Red Sore Around Nose");
    },
    notfunc11: (){
      if(symptoms.contains("Red Sore Around Nose")){
        symptoms.remove("Red Sore Around Nose");
      }
      else{
        null;
      }
    },
    choice12: "Yellow Crust Ooze",
    func12: (){
      symptoms.add("Yellow Crust Ooze");
    },
    notfunc12: (){
      if(symptoms.contains("Yellow Crust Ooze")){
        symptoms.remove("Yellow Crust Ooze");
      }
      else{
        null;
      }
    },
  ),
];

