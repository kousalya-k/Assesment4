package localad;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.bson.Document;

import com.mongodb.client.MongoClient;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoCursor;
import com.mongodb.client.MongoDatabase;

import Local.ConnectionManager;
import Local.Details;

/**
 * Servlet implementation class jobservlet
 */
@WebServlet("/job.do")
public class jobservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public jobservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MongoClient connection =ConnectionManager.getMongo();
		MongoDatabase db = ConnectionManager.getDb("Localad");
		MongoCollection<Document> collection = db.getCollection("jobs");
		String name = request.getParameter("title");
		String city = request.getParameter("city");
		String code = request.getParameter("code");
		String desc = request.getParameter("desc");
		String email = request.getParameter("email");
		String no = request.getParameter("no");
		Document document = new Document("title",name).append("city", city).append("code", code).append("desc", desc)
				.append("email", email).append("no", no);
		collection.insertOne(document);
		
		response.sendRedirect("index.html");

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MongoClient connection = ConnectionManager.getMongo();
		MongoDatabase db = ConnectionManager.getDb("Localad");
		MongoCollection<Document> collection = db.getCollection("jobs");
		MongoCursor<Document> cursor = collection.find().iterator();
		
		List<Details> jobAds = new ArrayList<Details>();
		
		while (cursor.hasNext()) {
			Document d = (Document) cursor.next();

			Details j = new Details(d.getString("title"), d.getString("city"),d.getString("desc"), d.getString("code"), d.getString("email"),d.getString("no"));
			jobAds.add(j);
		}

		request.setAttribute("jobAds", jobAds);
		request.getRequestDispatcher("view.jsp").forward(request, response);
		response.sendRedirect("view.jsp");
	}
	}


