package eunjunglee.final_springboots.utils;

import java.util.UUID;

import org.springframework.stereotype.Component;

@Component
public class UUIDUtils {
    public String getUniqueSequence() {
        UUID uuid = UUID.randomUUID();
        return uuid.toString();
    }
}
