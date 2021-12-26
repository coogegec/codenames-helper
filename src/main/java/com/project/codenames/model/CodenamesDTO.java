package com.project.codenames.model;

public class CodenamesDTO {
	
	private String word;

	public String getWord() {
		return word;
	}

	public void setWord(String word) {
		this.word = word;
	}

	@Override
	public String toString() {
		return "CodenamesDTO [word=" + word + "]";
	}

}