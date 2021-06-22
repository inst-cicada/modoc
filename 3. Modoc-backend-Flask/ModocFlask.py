#packages needed
from flask import Flask,request,jsonify
from flask_mysqldb import MySQL
import pandas as pd
import pickle
import numpy

app=Flask(__name__)

app.config['MYSQL_HOST']="Your Host Name"
app.config['MYSQL_USER']="Your Data Base UserName"
app.config['MYSQL_PASSWORD']="Your userpassword"
app.config['MYSQL_DB']="Database name"

mysql=MySQL(app)

@app.route('/userLogin',methods=['GET'])
def userLogin():
    email=request.args['email']
    password=request.args['pwd']
    try:
        cur=mysql.connection.cursor()
        cur.execute("SELECT * FROM usercredentials where EMail like %s and SecretCode like %s;",(email,password))
        data=cur.fetchall()
        mysql.connection.commit()
        #fetch=cur.fetchall()
        cur.close()
        d={}
        d['userName']=data[0][0]
        d['email']=data[0][1]
        d['password']=data[0][2]
        d['currentDiseases']=data[0][3]
        d['message']='Found!'
        return jsonify(d)
    except:
        d={}
        d['message']='Not Found!'
        return jsonify(d)

@app.route('/userSignup',methods=['GET'])
def userSignup():
    username=request.args['username']
    email=request.args['email']
    password=request.args['pwd']
    try:
        cur=mysql.connection.cursor()
        cur.execute("INSERT INTO usercredentials (UserName,EMail,SecretCode,Diseases) values(%s,%s,%s,%s);",(username,email,password,"null"))
        mysql.connection.commit()
        #fetch=cur.fetchall()
        cur.close()
        cur=mysql.connection.cursor()
        cur.execute("SELECT * FROM usercredentials where EMail like %s and SecretCode like %s;",(email,password))
        data=cur.fetchall()
        mysql.connection.commit()
        cur.close()
        d={}
        d['userName']=data[0][0]
        d['email']=data[0][1]
        d['password']=data[0][2]
        d['currentDiseases']=data[0][3]
        d['message']='Inserted!'
        return jsonify(d)
    except(e):
        d={}
        d['error']=str(e)
        d['message']='Account Exists!'
        return jsonify(d)

@app.route('/predictDisease',methods=['GET'])
def predictDisease():
    username=request.args['username']
    symptomString=request.args['symptoms']
    #print(symptomString)
    symptomsNames={"Itching": "itching", "Skin Rash": "skin_rash", "Nodal Skin Eruptions": "nodal_skin_eruptions", "Continuous Sneezing": "continuous_sneezing", "Shivering": "shivering", "Chills": "chills", "Joint Pain": "joint_pain", "Stomach Pain": "stomach_pain", "Acidity": "acidity", "Ulcers On Tongue": "ulcers_on_tongue", "Muscle Wasting": "muscle_wasting", "Vomiting": "vomiting", "Burning Micturition": "burning_micturition", "Spotting Urination": "spotting_ urination", "Fatigue": "fatigue", "Weight Gain": "weight_gain", "Anxiety": "anxiety", "Cold Hands And Feets": "cold_hands_and_feets", "Mood Swings": "mood_swings", "Weight Loss": "weight_loss", "Restlessness": "restlessness", "Lethargy": "lethargy", "Patches In Throat": "patches_in_throat", "Irregular Sugar Level": "irregular_sugar_level", "Cough": "cough", "High Fever": "high_fever", "Sunken Eyes": "sunken_eyes", "Breathlessness": "breathlessness", "Sweating": "sweating", "Dehydration": "dehydration", "Indigestion": "indigestion", "Headache": "headache", "Yellowish Skin": "yellowish_skin", "Dark Urine": "dark_urine", "Nausea": "nausea", "Loss Of Appetite": "loss_of_appetite", "Pain Behind The Eyes": "pain_behind_the_eyes", "Back Pain": "back_pain", "Constipation": "constipation", "Abdominal Pain": "abdominal_pain", "Diarrhoea": "diarrhoea", "Mild Fever": "mild_fever", "Yellow Urine": "yellow_urine", "Yellowing Of Eyes": "yellowing_of_eyes", "Acute Liver Failure": "acute_liver_failure", "Fluid Overload": "fluid_overload", "Swelling Of Stomach": "swelling_of_stomach", "Swelled Lymph Nodes": "swelled_lymph_nodes", "Malaise": "malaise", "Blurred And Distorted Vision": "blurred_and_distorted_vision", "Phlegm": "phlegm", "Throat Irritation": "throat_irritation", "Redness Of Eyes": "redness_of_eyes", "Sinus Pressure": "sinus_pressure", "Runny Nose": "runny_nose", "Congestion": "congestion", "Chest Pain": "chest_pain", "Weakness In Limbs": "weakness_in_limbs", "Fast Heart Rate": "fast_heart_rate", "Pain During Bowel Movements": "pain_during_bowel_movements", "Pain In Anal Region": "pain_in_anal_region", "Bloody Stool": "bloody_stool", "Irritation In Anus": "irritation_in_anus", "Neck Pain": "neck_pain", "Dizziness": "dizziness", "Cramps": "cramps", "Bruising": "bruising", "Obesity": "obesity", "Swollen Legs": "swollen_legs", "Swollen Blood Vessels": "swollen_blood_vessels", "Puffy Face And Eyes": "puffy_face_and_eyes", "Enlarged Thyroid": "enlarged_thyroid", "Brittle Nails": "brittle_nails", "Swollen Extremeties": "swollen_extremeties", "Excessive Hunger": "excessive_hunger", "Extra Marital Contacts": "extra_marital_contacts", "Drying And Tingling Lips": "drying_and_tingling_lips", "Slurred Speech": "slurred_speech", "Knee Pain": "knee_pain", "Hip Joint Pain": "hip_joint_pain", "Muscle Weakness": "muscle_weakness", "Stiff Neck": "stiff_neck", "Swelling Joints": "swelling_joints", "Movement Stiffness": "movement_stiffness", "Spinning Movements": "spinning_movements", "Loss Of Balance": "loss_of_balance", "Unsteadiness": "unsteadiness", "Weakness Of One Body Side": "weakness_of_one_body_side", "Loss Of Smell": "loss_of_smell", "Bladder Discomfort": "bladder_discomfort", "Foul Smell Of Urine": "foul_smell_of urine", "Continuous Feel Of Urine": "continuous_feel_of_urine", "Passage Of Gases": "passage_of_gases", "Internal Itching": "internal_itching", "Toxic Look (typhos)": "toxic_look_(typhos)", "Depression": "depression", "Irritability": "irritability", "Muscle Pain": "muscle_pain", "Altered Sensorium": "altered_sensorium", "Red Spots Over Body": "red_spots_over_body", "Belly Pain": "belly_pain", "Abnormal Menstruation": "abnormal_menstruation", "Dischromic Patches": "dischromic _patches", "Watering From Eyes": "watering_from_eyes", "Increased Appetite": "increased_appetite", "Polyuria": "polyuria", "Family History": "family_history", "Mucoid Sputum": "mucoid_sputum", "Rusty Sputum": "rusty_sputum", "Lack Of Concentration": "lack_of_concentration", "Visual Disturbances": "visual_disturbances", "Receiving Blood Transfusion": "receiving_blood_transfusion", "Receiving Unsterile Injections": "receiving_unsterile_injections", "Coma": "coma", "Stomach Bleeding": "stomach_bleeding", "Distention Of Abdomen": "distention_of_abdomen", "History Of Alcohol Consumption": "history_of_alcohol_consumption", "Fluid Overload.1": "fluid_overload.1", "Blood In Sputum": "blood_in_sputum", "Prominent Veins On Calf": "prominent_veins_on_calf", "Palpitations": "palpitations", "Painful Walking": "painful_walking", "Pus Filled Pimples": "pus_filled_pimples", "Blackheads": "blackheads", "Scurring": "scurring", "Skin Peeling": "skin_peeling", "Silver Like Dusting": "silver_like_dusting", "Small Dents In Nails": "small_dents_in_nails", "Inflammatory Nails": "inflammatory_nails", "Blister": "blister", "Red Sore Around Nose": "red_sore_around_nose", "Yellow Crust Ooze": "yellow_crust_ooze"}
    template={'itching': {0: 0},'skin_rash': {0: 0}, 'nodal_skin_eruptions': {0: 0}, 'continuous_sneezing': {0: 0}, 'shivering': {0: 0}, 'chills': {0: 0}, 'joint_pain': {0: 0}, 'stomach_pain': {0: 0}, 'acidity': {0: 0}, 'ulcers_on_tongue': {0: 0}, 'muscle_wasting': {0: 0}, 'vomiting': {0: 0}, 'burning_micturition': {0: 0}, 'spotting_ urination': {0: 0}, 'fatigue': {0: 0}, 'weight_gain': {0: 0}, 'anxiety': {0: 0}, 'cold_hands_and_feets': {0: 0}, 'mood_swings': {0: 0}, 'weight_loss': {0: 0}, 'restlessness': {0: 0}, 'lethargy': {0: 0}, 'patches_in_throat': {0: 0}, 'irregular_sugar_level': {0: 0}, 'cough': {0: 0}, 'high_fever': {0: 0}, 'sunken_eyes': {0: 0}, 'breathlessness': {0: 0}, 'sweating': {0: 0}, 'dehydration': {0: 0}, 'indigestion': {0: 0}, 'headache': {0: 0}, 'yellowish_skin': {0: 0}, 'dark_urine': {0: 0}, 'nausea': {0: 0}, 'loss_of_appetite': {0: 0}, 'pain_behind_the_eyes': {0: 0}, 'back_pain': {0: 0}, 'constipation': {0: 0}, 'abdominal_pain': {0: 0}, 'diarrhoea': {0: 0}, 'mild_fever': {0: 0}, 'yellow_urine': {0: 0}, 'yellowing_of_eyes': {0: 0}, 'acute_liver_failure': {0: 0}, 'fluid_overload': {0: 0}, 'swelling_of_stomach': {0: 0}, 'swelled_lymph_nodes': {0: 0}, 'malaise': {0: 0}, 'blurred_and_distorted_vision': {0: 0}, 'phlegm': {0: 0}, 'throat_irritation': {0: 0}, 'redness_of_eyes': {0: 0}, 'sinus_pressure': {0: 0}, 'runny_nose': {0: 0}, 'congestion': {0: 0}, 'chest_pain': {0: 0}, 'weakness_in_limbs': {0: 0}, 'fast_heart_rate': {0: 0}, 'pain_during_bowel_movements': {0: 0}, 'pain_in_anal_region': {0: 0}, 'bloody_stool': {0: 0}, 'irritation_in_anus': {0: 0}, 'neck_pain': {0: 0}, 'dizziness': {0: 0}, 'cramps': {0: 0}, 'bruising': {0: 0}, 'obesity': {0: 0}, 'swollen_legs': {0: 0}, 'swollen_blood_vessels': {0: 0}, 'puffy_face_and_eyes': {0: 0}, 'enlarged_thyroid': {0: 0}, 'brittle_nails': {0: 0}, 'swollen_extremeties': {0: 0}, 'excessive_hunger': {0: 0}, 'extra_marital_contacts': {0: 0}, 'drying_and_tingling_lips': {0: 0}, 'slurred_speech': {0: 0}, 'knee_pain': {0: 0}, 'hip_joint_pain': {0: 0}, 'muscle_weakness': {0: 0}, 'stiff_neck': {0: 0}, 'swelling_joints': {0: 0}, 'movement_stiffness': {0: 0}, 'spinning_movements': {0: 0}, 'loss_of_balance': {0: 0}, 'unsteadiness': {0: 0}, 'weakness_of_one_body_side': {0: 0}, 'loss_of_smell': {0: 0}, 'bladder_discomfort': {0: 0}, 'foul_smell_of urine': {0: 0}, 'continuous_feel_of_urine': {0: 0}, 'passage_of_gases': {0: 0}, 'internal_itching': {0: 0}, 'toxic_look_(typhos)': {0: 0}, 'depression': {0: 0}, 'irritability': {0: 0}, 'muscle_pain': {0: 0}, 'altered_sensorium': {0: 0}, 'red_spots_over_body': {0: 0}, 'belly_pain': {0: 0}, 'abnormal_menstruation': {0: 0}, 'dischromic _patches': {0: 0}, 'watering_from_eyes': {0: 0}, 'increased_appetite': {0: 0}, 'polyuria': {0: 0}, 'family_history': {0: 0}, 'mucoid_sputum': {0: 0}, 'rusty_sputum': {0: 0}, 'lack_of_concentration': {0: 0}, 'visual_disturbances': {0: 0}, 'receiving_blood_transfusion': {0: 0}, 'receiving_unsterile_injections': {0: 0}, 'coma': {0: 0}, 'stomach_bleeding': {0: 0}, 'distention_of_abdomen': {0: 0}, 'history_of_alcohol_consumption': {0: 0}, 'fluid_overload.1': {0: 0}, 'blood_in_sputum': {0: 0}, 'prominent_veins_on_calf': {0: 0}, 'palpitations': {0: 0}, 'painful_walking': {0: 0}, 'pus_filled_pimples': {0: 0}, 'blackheads': {0: 0}, 'scurring': {0: 0}, 'skin_peeling': {0: 0}, 'silver_like_dusting': {0: 0}, 'small_dents_in_nails': {0: 0}, 'inflammatory_nails': {0: 0}, 'blister': {0: 0},'red_sore_around_nose': {0: 0}, 'yellow_crust_ooze': {0: 0}}
    model=pickle.load(open("decisiontreemodel.sav",'rb'))
    symptoms=symptomString.split(',')
    file=pd.DataFrame(template)
    for i in symptoms:
        file[symptomsNames[i]][0]=1
    predictedDisease=model.predict(file)[0]
    print(predictedDisease)
    #Reading Description.csv for description
    desc=pd.read_csv("symptomDescription.csv")
    diseaseDescription=desc[desc['Disease']==predictedDisease].reset_index(drop=True,)['Description'][0]
    #Reading the precaution.csv file
    prec=pd.read_csv("symptomPrecautions.csv")
    precaution1=prec[prec['Disease']==predictedDisease].reset_index(drop=True,)['Precaution1'][0]
    precaution2=prec[prec['Disease']==predictedDisease].reset_index(drop=True,)['Precaution2'][0]
    precaution3=prec[prec['Disease']==predictedDisease].reset_index(drop=True,)['Precaution3'][0]
    precaution4=prec[prec['Disease']==predictedDisease].reset_index(drop=True,)['Precaution4'][0]
    #reading the icd code dataset
    icd=pd.read_csv("diseaseICD.csv")
    code=icd[icd['Disease']==predictedDisease].reset_index(drop=True,)['ICD Code'][0]
    d={}
    d["Disease"]=predictedDisease
    d["Description"]=diseaseDescription
    d['icd']=code
    d["Precaution1"]=str(precaution1).capitalize()
    d["Precaution2"]=str(precaution2).capitalize()
    d["Precaution3"]=str(precaution3).capitalize()
    d["Precaution4"]=str(precaution4).capitalize()
    #Updating the disease in database
    diseaseCombo=predictedDisease+','+code+','+d["Precaution1"]+','+d["Precaution2"]
    cur=mysql.connection.cursor()
    cur.execute("UPDATE usercredentials set Diseases=%s where UserName=%s",(diseaseCombo,username))
    mysql.connection.commit()
    cur.close()
    d['currentDiseases']=diseaseCombo
    print(d)
    return jsonify(d)


@app.route('/doctorShow',methods=['GET'])
def showDoctors():
    icd=request.args['icd']
    cur=mysql.connection.cursor()
    cur.execute("SELECT * FROM docinfo where ICD like %s;",[icd])
    data=cur.fetchall()
    mysql.connection.commit()
    #fetch=cur.fetchall()
    cur.close()
    x=len(data)
    temp={}
    temp['len']=x
    for i in range(x):
        temp[str(i)]=",".join(data[i])
    return(jsonify(temp))

@app.route('/emailChange',methods=['GET'])
def emailChange():
    username=request.args['username']
    newemail=request.args['newemail']
    try:
        cur=mysql.connection.cursor()
        cur.execute("UPDATE usercredentials set EMail=%s where UserName=%s;",(newemail,username))
        mysql.connection.commit()
        #fetch=cur.fetchall()
        cur.close()
        d={}
        d['message']='Changed!'
        return(jsonify(d))
    except:
        d={}
        d['message']='Not Changed!'
        return(jsonify(d))
@app.route('/passwordChange',methods=['GET'])
def passwordChange():
    username=request.args['username']
    newpassword=request.args['newpassword']
    try:
        cur=mysql.connection.cursor()
        cur.execute("UPDATE usercredentials set SecretCode=%s where UserName=%s;",(newpassword,username))
        mysql.connection.commit()
        #fetch=cur.fetchall()
        cur.close()
        d={}
        d['message']='Changed!'
        return(jsonify(d))
    except:
        d={}
        d['message']='Not Changed!'
        return(jsonify(d))


if __name__=="__main__":
    app.run(use_debugger=True,debug=True,use_reloader=False)