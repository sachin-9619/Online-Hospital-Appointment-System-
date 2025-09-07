package com.clinic.controller;

import java.io.IOException;
import java.util.Map;

import org.json.JSONObject;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody; // ✅ This is fine here (used in method param)
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
;



@RestController
@RequestMapping("/api/chat")
public class ChatController {

    @PostMapping
    public ResponseEntity<String> chatWithOpenAI(@RequestBody Map<String, String> payload) {
        String userMessage = payload.get("message");

        try {
            String response = callOpenAI(userMessage);
            return ResponseEntity.ok(response);
        } catch (Exception e) {
            e.printStackTrace();
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Error");
        }
    }

    private String callOpenAI(String userMessage) throws IOException {
        String apiKey = "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"; // Replace with your key

        OkHttpClient client = new OkHttpClient();
        MediaType mediaType = MediaType.get("application/json; charset=utf-8");

        String requestBody = """
        {
            "model": "gpt-3.5-turbo",
            "messages": [
                {"role": "system", "content": "You are a helpful medical assistant for Sai Clinic."},
          {"role": "user", "content": "%s"}
            ]
        }
        """.formatted(userMessage);

        @SuppressWarnings("deprecation")
		okhttp3.RequestBody body = okhttp3.RequestBody.create(mediaType, requestBody);
        Request request = new Request.Builder()
        	    .url("https://api.openai.com/v1/chat/completions")
        	    .post(body)  // ✅ no cast needed
        	    .addHeader("Authorization", "Bearer " + apiKey)
        	    .addHeader("Content-Type", "application/json")
        	    .build();


        try (Response response = client.newCall(request).execute()) {
            if (!response.isSuccessful()) throw new IOException("Unexpected code " + response);
            String json = response.body().string();
            JSONObject obj = new JSONObject(json);
            return obj.getJSONArray("choices").getJSONObject(0).getJSONObject("message").getString("content");
        }
    }

}
