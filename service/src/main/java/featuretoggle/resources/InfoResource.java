package featuretoggle.resources;

import net.sf.json.JSONObject;
import org.apache.commons.io.IOUtils;
import org.springframework.stereotype.Component;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import java.nio.charset.Charset;


@Component("infoResource")
@Path("info")
@Produces({MediaType.APPLICATION_JSON })
public class InfoResource {

    public static final String INFO_JSON = "/info.json";

    @GET
    @Path("/")
    public Response getInfo() throws Exception{
        return Response.status(Response.Status.OK)
                .entity(getBuildInfo())
                .build();
    }

    private String getBuildInfo() throws Exception {
        String info = IOUtils.toString(getClass().getResourceAsStream(INFO_JSON), Charset.defaultCharset());
        JSONObject infoObject = JSONObject.fromObject(info) ;
        JSONObject responseJson = new JSONObject();
        responseJson.put("Feature Toggle API", infoObject);

        return responseJson.toString();
    }


}
