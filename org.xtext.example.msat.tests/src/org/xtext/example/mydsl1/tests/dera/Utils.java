package org.xtext.example.mydsl1.tests.dera;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;

import org.xtext.example.mydsl1.mSat.Expression;

import com.google.common.io.Files;

public class Utils {
	public static String DEFAULT_FILENAME = "tmp.cnf";

	public static void createFileFromFormula(Expression expr) {
		String content = DimacsPrinter.dimacsPrinter(expr);
		try {
			Files.write(content.getBytes(), new File(DEFAULT_FILENAME));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public static boolean bashCmd(String cmd, String res) {
		try {
			Runtime rt = Runtime.getRuntime();
			String[] cmd1 = {"/bin/sh", "-c", cmd + " | grep \"" + res +"\""};
			Process proc = rt.exec(cmd1);
			proc.waitFor();
			BufferedReader b = new BufferedReader(new InputStreamReader (proc.getInputStream()));
			String line = "";
			boolean bool = false;
			if (b.readLine() != null)
				bool= true;
			b.close();
			return bool;
		}catch(Exception ex) {
			return false;
		}
	}
}
