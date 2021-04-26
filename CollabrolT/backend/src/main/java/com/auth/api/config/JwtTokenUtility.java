package com.auth.api.config;

import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jwts;
import org.springframework.beans.factory.annotation.Value;

import java.io.Serializable;
import java.util.function.Function;

public class JwtTokenUtility implements Serializable {
    public static final long JWT_TOKEN_VALID = 5 * 60 * 60;
    @Value("${jwt.secret}")
    private String secret;

    public Claims getAllClaimsFlowToken(String token) {
        return Jwts.parser().setSigningKey(secret).parseClaimsJws(token).getBody();
    }

    public <T> T geClaimFromToken(String token, Function<Claims, T> claimsTFunction) {
        final Claims claims = getAllClaimsFlowToken(token);
        return claimsTFunction.apply(claims);
    }

    public String getUserNameFromToken(String token) {
        return geClaimFromToken(token, Claims::getSubject);
    }
}
