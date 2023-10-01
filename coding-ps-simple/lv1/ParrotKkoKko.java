package practice.goorm.lv1;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;

/*
 *  A parrot can understand vowels not consonant
 *  [a,e,i,o,u]
 *  about sentences, how many vowels can say
 *  
 *   - input
 *  first : the number of sentences
 *  from second : sentence 
 *  
 *   - output
 *   vowels per sentences
 *   if there is no vowels, print ???
 */

public class ParrotKkoKko {
	public static void main(String[] args) throws IOException {
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		
		int number = Integer.parseInt(br.readLine());
		
		// 입력되는 문자열 임시저장
		ArrayList<String> sentences = new ArrayList<String>();
		for(int i=0; i<number; i++) {
			sentences.add(br.readLine());
		}
		
		// 모음 - 대소문자를 구분하여 출력
		//String[] vowels= {"a","e","i","o","u", "A","E","I","O","U"};

		for(int i=0; i<sentences.size(); i++) {
			StringBuffer result=new StringBuffer("");
			for(int j=0; j<sentences.get(i).length(); j++) {
				String cha = sentences.get(i).charAt(j)+"";
				switch(cha) {
				case "a": result=result.append(cha);break;
				case "e": result=result.append(cha);break;
				case "i": result=result.append(cha);break;
				case "o": result=result.append(cha);break;
				case "u": result=result.append(cha);break;
				case "A": result=result.append(cha);break;
				case "E": result=result.append(cha);break;
				case "I": result=result.append(cha);break;
				case "O": result=result.append(cha);break;
				case "U": result=result.append(cha);break;
				}
			}
			if(result.equals("")) {
				System.out.println("???");
			} else {
				System.out.println(result);
			}
		}	
		
		/*
		// 입력되는 문자열 임시저장
		ArrayList<StringBuffer> sentences = new ArrayList<StringBuffer>();
		for(int i=0; i<number; i++) {
			sentences.add(new StringBuffer(br.readLine()));
		}
		
		
		// 개별 문장별 모음 검사
		for(int i=0; i<sentences.size(); i++) {
			StringBuffer result=new StringBuffer("");
			for(int j=0; j<vowels.length; j++) {
				int index=sentences.get(i).indexOf(vowels[j]);
				
				if(index==-1) continue;
				
				result=result.append(sentences.get(i).charAt(index));
			}
			if(result.equals("")) {
				System.out.println("???");
			} else {
				System.out.println(result);
			}
		}
		*/
		
	}
}
