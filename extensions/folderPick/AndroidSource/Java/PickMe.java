/*****************************************************************************************

folderPick extension for Android by Tom Traggis @ Roadhammer Gaming

this extension will allow you to make up to 4 folders that you can name in the main storage 
area of the users Android device and return the address of the folders. You can then use this 
address to save pictures or text created either by you or the user through your own code.

How to use:

There is no need to use an async event in your project! Just use a script, or a code in an alarm/
mouse pressed/ key pressed event etc, and simply call getDire1("Your_main_folder"); to make
1 folder, getDire2("Your_main_folder", "Your sub folder"); to make 2 folders, 
getDire3("Your_main_folder", "Your sub folder 1", "Your sub folder2"); to make 3 folders, and
if you need 4 folders getDire4("Your_main_folder", "Your sub folder 1", "Your sub folder2", "Your sub folder3");
from GameMaker: Studio Then you can use the result variable(s) in any operations you wish. 
Example:

//step event example
if(mouse_check_button_released(mb_left))
{
global.files = getDire2("Company name", "Game name");// Name your folders here
screen_save(global.files+"/Screenshot.png");// Put a FORWARD slash before your save name, 
//and the filetype after (.png, .txt). Also you don't need to use working_directory+
}

An example game is also included, import the project as a .gmz to use!

Author: Tom Traggis
Contact: RoadhammerGaming@gmail.com
Website: http://roadhammergaming.blogspot.com/p/news.html
Google Play: https://play.google.com/store/search?q=roadhammer%20gaming&hl=en

******************************************************************************************/

package ${YYAndroidPackageName};//Import the GM:S stuff
import ${YYAndroidPackageName}.R;
import com.yoyogames.runner.RunnerJNILib;

import android.util.Log;//Import android librarys
import java.io.File;
import java.io.FileReader;
import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.lang.String;
import android.content.Context;
import android.os.Environment;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import android.content.pm.PackageManager;
import android.Manifest;
import android.os.Build;
import android.content.Intent;
import android.content.BroadcastReceiver;
import android.media.MediaScannerConnection;
import android.media.MediaScannerConnection.MediaScannerConnectionClient;
import static android.content.Intent.ACTION_MEDIA_SCANNER_SCAN_FILE;
import static android.net.Uri.fromFile;
import android.net.Uri;
import android.app.Activity;

public class PickMe extends Activity 
{
private static String msg;// Initialize the variables
private static String state;
private static File Root;
private static String fileNew;
private static File folder;
int Get_Permission = 20;

    	public String getDire1(String arg0)
	{
		        state = Environment.getExternalStorageState();
        if (Environment.MEDIA_MOUNTED.equals(state)) { // If the storage is not being used or removed
            Root = Environment.getExternalStorageDirectory();//Get the path to main storage area
            folder = new File(Root.getAbsolutePath() + "/" +arg0 + "/");//Put together and add new folder
			if (!folder.exists()) {// Make the folders if they don't allready exist
                folder.mkdirs();}		
		        msg = folder.toString();//Get the final address
			}
        	String myString = msg;
        	Log.i("yoyo", myString);

        	return myString;//Return the final folder address to GM:S
    }
	    	public String getDire2(String arg0, String arg1)
	{
		        state = Environment.getExternalStorageState();
        if (Environment.MEDIA_MOUNTED.equals(state)) { // If the storage is not being used or removed
            Root = Environment.getExternalStorageDirectory();//Get the path to main storage area
            folder = new File(Root.getAbsolutePath() + "/" +arg0 + "/" + arg1 + "/");//Put together and add new folders
			if (!folder.exists()) {// Make the folders if they don't allready exist
                folder.mkdirs();}		
		        msg = folder.toString();//Get the final address
			}
        	String myString = msg;
        	Log.i("yoyo", myString);

        	return myString;//Return the final folder address to GM:S
    }
	    	public String getDire3(String arg0, String arg1, String arg2)
	{
		        state = Environment.getExternalStorageState();
        if (Environment.MEDIA_MOUNTED.equals(state)) { // If the storage is not being used or removed
            Root = Environment.getExternalStorageDirectory();//Get the path to main storage area
            folder = new File(Root.getAbsolutePath() + "/" +arg0 + "/" + arg1 + "/" + arg2 + "/");//Put together and add new folders
			if (!folder.exists()) {// Make the folders if they don't allready exist
                folder.mkdirs();}		
		        msg = folder.toString();//Get the final address
			}
        	String myString = msg;
        	Log.i("yoyo", myString);

        	return myString;//Return the final folder address to GM:S
    }
	    	public String getDire4(String arg0, String arg1, String arg2, String arg3)
	{
		        state = Environment.getExternalStorageState();
        if (Environment.MEDIA_MOUNTED.equals(state)) { // If the storage is not being used or removed
            Root = Environment.getExternalStorageDirectory();//Get the path to main storage area
            folder = new File(Root.getAbsolutePath() + "/" +arg0 + "/" + arg1 + "/" +arg2 + "/" + arg3 + "/");//Put together and add new folders
			if (!folder.exists()) {// Make the folders if they don't allready exist
                folder.mkdirs();}		
		        msg = folder.toString();//Get the final address
			}
        	String myString = msg;
        	Log.i("yoyo", myString);

        	return myString;//Return the final folder address to GM:S
    }

    public final void osNotice(String fupdate)//Notify the OS that there's a new media file available
    {
		Log.i("yoyo", "New file to alert os-  "+fupdate);
		String alert = Environment.getExternalStorageState();
        if (Environment.MEDIA_MOUNTED.equals(alert)) 
		
		{
		Root = Environment.getExternalStorageDirectory();
		File file = new File(Root.getAbsolutePath() + "/" +fupdate);
		String abs = file.toString();
		Log.i("yoyo", "File ready to send- "+abs);
		RunnerActivity.CurrentActivity.sendBroadcast(new Intent(Intent.ACTION_MEDIA_SCANNER_SCAN_FILE, Uri.fromFile(file)));
        		Log.i("yoyo", "Updated sucessfully! "+abs);
		}
		else
        Log.i("yoyo", "Could not update file-  "+fupdate);
    }
		   
		   		public void WriteExtStor()// get permissions android M, call at game start!
	{
		if (android.os.Build.VERSION.SDK_INT >= Build.VERSION_CODES.M)
		{
            ActivityCompat.requestPermissions(RunnerActivity.CurrentActivity, new String[]{Manifest.permission.WRITE_EXTERNAL_STORAGE}, Get_Permission);
		}
    }
	
	public double ChkWriteExtStor()
	{
		if(ContextCompat.checkSelfPermission(RunnerActivity.CurrentActivity,Manifest.permission.WRITE_EXTERNAL_STORAGE)==0)
		return(1);
		return(0);
	}
	
			public void MountFile()
	{
		if (android.os.Build.VERSION.SDK_INT >= Build.VERSION_CODES.M)
		{
            ActivityCompat.requestPermissions(RunnerActivity.CurrentActivity, new String[]{Manifest.permission.MOUNT_UNMOUNT_FILESYSTEMS}, Get_Permission);
		}
    }
	
	public double ChkMountFile()
	{
		if(ContextCompat.checkSelfPermission(RunnerActivity.CurrentActivity,Manifest.permission.MOUNT_UNMOUNT_FILESYSTEMS)==0)
		return(1);
		return(0);
	}
}