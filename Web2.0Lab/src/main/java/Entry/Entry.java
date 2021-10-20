package Entry;

import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.io.Serializable;
import java.util.Date;
@EqualsAndHashCode @ToString
public class Entry implements Serializable {
    @Setter @Getter
    private Double x;
    @Setter @Getter
    private Double y;
    @Setter @Getter
    private Double r;
    @Setter @Getter
    private Date currentTime;
    @Setter @Getter
    private boolean result;

    public Entry(){

    }

    public Entry(double x , double y, double r, boolean result , Date currentTime) {
        this.x = x;
        this.y = y;
        this.r = r;
        this.result = result;
        this.currentTime = currentTime;
    }


}