package com.clinic.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class ChatMessage {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    private String userMessage;
    private String botResponse;
    
    
	public ChatMessage() {
	}


	public ChatMessage(int id, String userMessage, String botResponse) {
		super();
		this.id = id;
		this.userMessage = userMessage;
		this.botResponse = botResponse;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getUserMessage() {
		return userMessage;
	}


	public void setUserMessage(String userMessage) {
		this.userMessage = userMessage;
	}


	public String getBotResponse() {
		return botResponse;
	}


	public void setBotResponse(String botResponse) {
		this.botResponse = botResponse;
	}


	@Override
	public String toString() {
		return "ChatMessage [id=" + id + ", userMessage=" + userMessage + ", botResponse=" + botResponse + "]";
	}
    
    
}
