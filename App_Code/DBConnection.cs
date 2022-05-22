using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;
using System.Data;


/// <summary>
/// Summary description for DBConnection
/// </summary>
public class DBConnection
{
    MySqlConnection cnn;
    MySqlCommand cmd;
    MySqlDataAdapter ada;
    MySqlDataReader reader;
    DataSet ds;
    DataTable tab;
    DataRow row;
    string cnnstr = "Data Source=localhost; Initial Catalog=elearning; User Id=root; Password=admin";
    string status = "No";
    Boolean stat = false;
    int cid = 0;

	public DBConnection()
	{
		cnn = new MySqlConnection(cnnstr);
        cnn.Open();
	}

    public bool checkExist(string email)
    {
        int uid = 0;
        cmd = new MySqlCommand("select email from users where email='"+email+"'", cnn);
        reader = cmd.ExecuteReader();
        while (reader.Read())
        {
            uid = 1;
        }
        reader.Close();
        if (uid == 1)
       
            return false;
            else
            return true;
       
    }
    public int LastUserId()
    {
        int uid = 0;
        ada = new MySqlDataAdapter("select MAX(uid) from users ", cnn);
        ds = new DataSet();
        ada.Fill(ds, "users");
        tab = new DataTable();
        tab = ds.Tables["users"];
        if (tab.Rows.Count > 0)
        {
            row = tab.Rows[0];
            uid = Int32.Parse(row["MAX(uid)"].ToString());
        }
        return uid;
    }

    public bool storeUser(string name, string email, string pass, string type, string city, string country, string add)
    {
        int uid = LastUserId();
        uid++;
        string profpic = "No";
        cmd = new MySqlCommand("insert into users values('"+uid+"','" + name + "', '" + email + "', '" + pass + "', '"+type+"', '" + city + "', '" + country + "', '" + add + "','"+ status+"')",cnn);
        if (cmd.ExecuteNonQuery() > 0)
        {
            cmd = new MySqlCommand("insert into userprofile values('" + uid + "', '" + name + "', '', '','" + email + "', '', '" + add + "', '" + city + "', '" + country + "', '', '', '', '','','', '" + type + "', '" + profpic + "')", cnn);
            if (cmd.ExecuteNonQuery() > 0)
            {
                stat = true;
            }
            else
            {
                stat = false;
            }
        }
        return stat;
    }

    public string checkLogin(string email, string pass, string type)
    {
        cmd = new MySqlCommand("select email, password, type from users where email='" + email + "' and password='"+pass+"'", cnn);

        reader = cmd.ExecuteReader();
        while (reader.Read())
        {
            pass = reader["password"].ToString();
            email = reader["email"].ToString();
            type = reader["type"].ToString();
        }
        reader.Close();
        return type;
                
    }

    //================================================ User Management =======================================================//


    public DataTable getDeactivUname()
    {
        ada = new MySqlDataAdapter("select uname from users where status='No'", cnn);
        ds = new DataSet();
        ada.Fill(ds, "users");
        tab = new DataTable();
        tab = ds.Tables["users"];
        return tab;

    }

    public DataTable getActiveUname()
    {
        ada = new MySqlDataAdapter("select uname from users where status='Yes'", cnn);
        ds = new DataSet();
        ada.Fill(ds, "users");
        tab = new DataTable();
        tab = ds.Tables["users"];
        return tab;
    }

    public DataTable getAllUname()
    {
        ada = new MySqlDataAdapter("select uname from users", cnn);
        ds = new DataSet();
        ada.Fill(ds, "users");
        tab = new DataTable();
        tab = ds.Tables["users"];
        return tab;
    }

    public bool UpdateStatus(string uname)
    {
        cmd = new MySqlCommand("update users SET status='Yes' where uname='" + uname + "'", cnn);
        if (cmd.ExecuteNonQuery() > 0)
            return true;
        else
            return false;
    }

    public bool RejectStatus(string uname)
    {
        cmd = new MySqlCommand("update users SET status='No' where uname= '" + uname + "'", cnn);
        if (cmd.ExecuteNonQuery() > 0)

            return true;
        else
            return false;

    }
    public bool DeleteUser(string uname)
    {
        cmd = new MySqlCommand("delete from users where uname= '" + uname + "'", cnn);
        if (cmd.ExecuteNonQuery() > 0)
            return true;
        else
            return false;

    }

    // =========================================== Manage Course ===============================================//

    public int LastCategoryId()
    {
       
        ada = new MySqlDataAdapter("select MAX(cid) from category", cnn);
        ds = new DataSet();
        ada.Fill(ds, "category");
        tab = new DataTable();
        tab = ds.Tables["category"];
        if (tab.Rows.Count > 0)
        {
            row = tab.Rows[0];
            cid = Int32.Parse(row["MAX(cid)"].ToString());
        }
        return cid;
    }

    public bool AddCourseCat(string maincat, string substr, string parsub)
    {
        int cid = LastCategoryId();
        cid++;
        cmd = new MySqlCommand("insert into category values('" + cid + "', '" + maincat + "', '" + substr + "', '" + parsub + "')", cnn);
        if (cmd.ExecuteNonQuery() > 0)
            stat = true;
        else
            stat = false;
        return stat;

    }

    // =========================================== Add Course Data ===============================================//

    public DataTable GetMainCourseCat()
    {
        ada = new MySqlDataAdapter("select distinct maincat from category", cnn);
        ds = new DataSet();
        ada.Fill(ds, "category");
        tab = new DataTable();
        tab = ds.Tables["category"];
        return tab;
    }

    public DataTable GetSubCourseCat(string mainc)
    {
        ada = new MySqlDataAdapter("select distinct substream from category where maincat = '"+mainc+"'", cnn);
        ds = new DataSet();
        ada.Fill(ds, "category");
        tab = new DataTable();
        tab = ds.Tables["category"];
        return tab;
    }

    public DataTable getTeacherCat(string user)
    {
        ada = new MySqlDataAdapter("select * from  userprofile where username = '" + user + "'", cnn);
        ds = new DataSet();
        ada.Fill(ds, "userprofile");
        tab = new DataTable();
        tab = ds.Tables["userprofile"];
        return tab;
    }

    public DataTable GetSub(string maincat, string subcat)
    {
        ada = new MySqlDataAdapter("select parsub from category where maincat ='"+maincat+"' AND substream = '"+ subcat +"'", cnn);
        ds = new DataSet();
        ada.Fill(ds, "category");
        tab = new DataTable();
        tab = ds.Tables["category"];
        return tab;
    }

    public DataTable GetParSub(string subcat)
    {
        ada = new MySqlDataAdapter("select parsub from category where  substream = '" + subcat + "'", cnn);
        ds = new DataSet();
        ada.Fill(ds, "category");
        tab = new DataTable();
        tab = ds.Tables["category"];
        return tab;
    }
    public int getLastDocId()
    {
        int docid = 0;
        cmd = new MySqlCommand("select * from documents", cnn);
        reader = cmd.ExecuteReader();
        while (reader.Read())
        {
            docid = Int32.Parse(reader["docid"].ToString());
        }
        reader.Close();
        return docid;

    }

    public bool AddCourseDoc(string mainc, string subcat, string parsub, string fname, string authname, string docno, string price, string desc, string upfile)
    {
        int docid = getLastDocId();
        docid++;
        cmd = new MySqlCommand("insert into documents values('"+docid+"', '"+mainc+"', '"+subcat+"', '"+parsub+"', '"+fname+"', '"+authname+"', '"+docno+"', '"+price+"', '"+desc+"', '"+upfile+"')", cnn);
        if (cmd.ExecuteNonQuery() > 0)
            stat = true;
        else
            stat = false;
        return stat;
    }


   ///======================
   ///

    public DataTable getEngJavaNotes()
    {
     ada = new MySqlDataAdapter("select *  from documents where parcat='JAVA'", cnn);
        ds = new DataSet();
        ada.Fill(ds, "documents");
        tab = new DataTable();
        tab = ds.Tables["documents"];
        return tab;
}



    //======================================

    public DataTable getCourseDetails(string add)
    {
        ada = new MySqlDataAdapter("select *  from documents where docadd='"+ add +"'", cnn);
        ds = new DataSet();
        ada.Fill(ds, "documents");
        tab = new DataTable();
        tab = ds.Tables["documents"];
        return tab;
    }
    //=================================


    public int getLastCId()
    {
        int cid = 0;
        cmd = new MySqlCommand("select * from mycourse", cnn);
        reader = cmd.ExecuteReader();
        while (reader.Read())
        {
            cid = Int32.Parse(reader["cid"].ToString());
        }
        reader.Close();
        return cid;

    }

    public bool AddCourse(string uname, string mainc, string subcat, string parsub, string fname, string authname, string docno, string price, string desc, string upfile)
    {
        int cid = getLastCId();
        cid++;
        cmd = new MySqlCommand("insert into mycourse values('"+cid+"','" + uname + "', '" + mainc + "', '" + subcat + "', '" + parsub + "', '" + fname + "', '" + authname + "', '" + docno + "', '" + price + "', '" + desc + "', '" + upfile + "')", cnn);
        if (cmd.ExecuteNonQuery() > 0)
            stat = true;
        else
            stat = false;
        return stat;
    }


    /*==========================User Profile===================================*/

    public DataRow GetUserProfile(string uname)
    {
        ada = new MySqlDataAdapter("select * from userprofile where username= '" + uname + "'", cnn);
        ds = new DataSet();
        ada.Fill(ds, "userprofile");
        tab = new DataTable();
        tab = ds.Tables["userprofile"];
        row = tab.Rows[0];
        return row;
    }

    public bool UpdateStudentProfile(string uname, string fname, string lname, string phone, string add, string city, string country, string age, string gender, string qual, string occ)
    {
        cmd = new MySqlCommand("update userprofile SET fname = '"+fname+"', lname ='"+lname+"', phone='" + phone + "', address='" + add + "', city='" + city + "', country= '"+country+"', age='" + age + "', gender = '" + gender + "', qualification='" + qual + "', occupation = '" + occ + "' where username = '" + uname + "'", cnn);
        if (cmd.ExecuteNonQuery() > 0)
            return true;
        else
            return false;
    }

    public bool UpdateTeacherProfile(string uname, string fname, string lname, string phone, string add, string city, string country, string age, string gender, string qual, string occ, string maincat, string subcat)
    {
        cmd = new MySqlCommand("update userprofile SET fname = '" + fname + "', lname ='" + lname + "', phone='" + phone + "', address='" + add + "', city='" + city + "', country= '" + country + "', age='" + age + "', gender = '" + gender + "', qualification='" + qual + "', occupation = '" + occ + "', maincat = '" + maincat + "' , subcat = '" + subcat + "'  where username = '" + uname + "'", cnn);
        if (cmd.ExecuteNonQuery() > 0)
            return true;
        else
            return false;
    }

    public string GetProfilePic(string uname)
    {
        string pic = "";
        cmd = new MySqlCommand("select profpic from userprofile where username = '" + uname + "'", cnn);
        reader = cmd.ExecuteReader();
        if (reader.Read())
            pic = "users/" + uname + "/" + reader["profpic"].ToString();
        reader.Close();
        return pic;
    }

    public bool UpdateProfilePic(string uname, string filename)
    {
        cmd = new MySqlCommand("update userprofile set profpic = '" + filename + "' where username = '" + uname + "'", cnn);
        if (cmd.ExecuteNonQuery() > 0)

            return true;
        else
            return false;

    }

    // =========================================================== Add Feedback ============================================ //

    public int LastFeedbackId()
    {

        int fid = 0;
        cmd = new MySqlCommand("select * from feedback", cnn);
        reader = cmd.ExecuteReader();
        while(reader.Read())

            fid = Int32.Parse(reader["fid"].ToString());
        reader.Close();
        return fid;
    }

    public bool StoreSFeedback(string uname, string comment)
    {
        int fid = LastFeedbackId();
        fid++;
        string date, time, type = "Admin";
        date = System.DateTime.Now.ToShortDateString();
        time = System.DateTime.Now.ToShortTimeString();
        cmd = new MySqlCommand("insert into feedback values('" + fid + "', '" + uname + "','', '" + comment + "','"+type+"', '" + date + "', '"+time+"')", cnn);
        if (cmd.ExecuteNonQuery() > 0)
            stat = true;
        else
            stat = false;
        return stat;

    }

    public bool StoreTFeedback(string uname, string too, string comment)
    {
        int fid = LastFeedbackId();
        fid++;
        string date, time, type = "Student";
        date = System.DateTime.Now.ToShortDateString();
        time = System.DateTime.Now.ToShortTimeString();
        cmd = new MySqlCommand("insert into feedback values('" + fid + "', '" + uname + "','"+too+"', '" + comment + "','" + type + "', '" + date + "', '" + time + "')", cnn);
        if (cmd.ExecuteNonQuery() > 0)
            stat = true;
        else
            stat = false;
        return stat;

    }

    public bool StoreAFeedback( string too, string comment)
    {
        int fid = LastFeedbackId();
        fid++;
        string date, time, uname = "Admin";
        date = System.DateTime.Now.ToShortDateString();
        time = System.DateTime.Now.ToShortTimeString();
        cmd = new MySqlCommand("insert into feedback values('" + fid + "', '" + uname + "', '',  '" + comment + "','" + too + "', '" + date + "', '" + time + "')", cnn);
        if (cmd.ExecuteNonQuery() > 0)
            stat = true;
        else
            stat = false;
        return stat;

    }


    //================================================ Student Messaging =======================================================//


    public DataTable getTUname()
    {
        ada = new MySqlDataAdapter("select uname from users where type='Teacher'", cnn);
        ds = new DataSet();
        ada.Fill(ds, "users");
        tab = new DataTable();
        tab = ds.Tables["users"];
        return tab;

    }

    public DataTable getSUname()
    {
        ada = new MySqlDataAdapter("select uname from users where type='Student'", cnn);
        ds = new DataSet();
        ada.Fill(ds, "users");
        tab = new DataTable();
        tab = ds.Tables["users"];
        return tab;

    }
    public int LastMessageId()
    {

        int mid = 0;
        cmd = new MySqlCommand("select * from message", cnn);
        reader = cmd.ExecuteReader();
        while(reader.Read())

            mid = Int32.Parse(reader["mid"].ToString());
        reader.Close();
        return mid + 1;
    }

    public bool StoreSMessage(string fromm, string too, string subj, string mess)
    {
        int mid = LastMessageId();
       // mid++;
        string date, time, type = "Student";
        date = System.DateTime.Now.ToShortDateString();
        time = System.DateTime.Now.ToShortTimeString();
        cmd = new MySqlCommand("insert into message values('" + mid + "', '" + fromm + "', '" + too + "',  '" + subj + "','" + mess + "', '" + type + "', '" + date + "', '" + time + "')", cnn);
        if (cmd.ExecuteNonQuery() > 0)
            stat = true;
        else
            stat = false;
        return stat;

    }
    public bool StoreTMessage(string fromm, string too, string subj, string mess)
    {
        int mid = LastMessageId();
        // mid++;
        string date, time, type = "Teacher";
        date = System.DateTime.Now.ToShortDateString();
        time = System.DateTime.Now.ToShortTimeString();
        cmd = new MySqlCommand("insert into message values('" + mid + "', '" + fromm + "', '" + too + "',  '" + subj + "','" + mess + "', '" + type + "', '" + date + "', '" + time + "')", cnn);
        if (cmd.ExecuteNonQuery() > 0)
            stat = true;
        else
            stat = false;
        return stat;

    }
    public DataTable getStudentsMessages(string uname)
    {
        ada = new MySqlDataAdapter("select * from message where too = '"+uname+"' AND type='Teacher'", cnn);
        ds = new DataSet();
        ada.Fill(ds, "message");
        tab = new DataTable();
        tab = ds.Tables["message"];
        return tab;
    }

    public DataTable getTeachersMessages(string uname)
    {
        ada = new MySqlDataAdapter("select * from message where too = '" + uname + "' AND type='Student'", cnn);
        ds = new DataSet();
        ada.Fill(ds, "message");
        tab = new DataTable();
        tab = ds.Tables["message"];
        return tab;
    }


    public bool deleteMessage(int mid)
    {
        cmd = new MySqlCommand("delete from message where mid='" + mid + "'", cnn);
        if (cmd.ExecuteNonQuery() > 0)
            return true;
        else
            return false;
    }

    public DataRow displayMsg(int mid)
    {
        ada = new MySqlDataAdapter("select * from message where mid= '" + mid + "'", cnn);
        ds = new DataSet();
        ada.Fill(ds, "message");
        tab = new DataTable();
        tab = ds.Tables["message"];
        row = tab.Rows[0];
        return row;
    }

    public DataRow displayFeedback(int mid)
    {
        ada = new MySqlDataAdapter("select * from feedback where fid= '" + mid + "'", cnn);
        ds = new DataSet();
        ada.Fill(ds, "feedback");
        tab = new DataTable();
        tab = ds.Tables["feedback"];
        row = tab.Rows[0];
        return row;
    }

    // ==================================================

    public DataTable getStudyCourses(string mainc, string subcat, string parcat)
    {
        ada = new MySqlDataAdapter("select * from documents where maincat ='"+mainc+"' AND subcat ='"+subcat+"' AND parcat ='"+parcat+"'", cnn);
        ds = new DataSet();
        ada.Fill(ds, "documents");
        tab = new DataTable();
        tab = ds.Tables["documents"];
        return tab;
    }

    public DataTable getQuestions(string subj)
    {
        ada = new MySqlDataAdapter("select * from exam where subject ='" + subj + "'", cnn);
        ds = new DataSet();
        ada.Fill(ds, "exam");
        tab = new DataTable();
        tab = ds.Tables["exam"];
        return tab;
    }


    public DataTable getStudentsFeedback(string uname)
    {
        ada = new MySqlDataAdapter("select * from feedback where username = '" + uname + "' OR type='Student'", cnn);
        ds = new DataSet();
        ada.Fill(ds, "feedback");
        tab = new DataTable();
        tab = ds.Tables["feedback"];
        return tab;
    }

    public DataTable getAdminFeedback(string uname)
    {
        ada = new MySqlDataAdapter("select * from feedback where username='Admin'", cnn);
        ds = new DataSet();
        ada.Fill(ds, "feedback");
        tab = new DataTable();
        tab = ds.Tables["feedback"];
        return tab;
    }
}