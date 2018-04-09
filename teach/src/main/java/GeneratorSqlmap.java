import org.apache.ibatis.io.Resources;
import org.mybatis.generator.api.MyBatisGenerator;
import org.mybatis.generator.config.Configuration;
import org.mybatis.generator.config.xml.ConfigurationParser;
import org.mybatis.generator.internal.DefaultShellCallback;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

public class GeneratorSqlmap {

	public void generator() throws Exception{
		List<String> warnings = new ArrayList<String>();
		boolean overwrite = true;
		/*指定 逆向工程配置文件*/
		//File configFile = new File("generatorConfig.xml");
		InputStream in = Resources.getResourceAsStream("generatorConfig.xml");
		ConfigurationParser cp = new ConfigurationParser(warnings);
		Configuration config = cp.parseConfiguration(in);
		DefaultShellCallback callback = new DefaultShellCallback(overwrite);
		MyBatisGenerator myBatisGenerator = new MyBatisGenerator(config,
				callback, warnings);
		myBatisGenerator.generate(null);
		in.close();
	}
	public static void main(String[] args) throws Exception {
		String uuid = UUID.randomUUID().toString().replaceAll("-", "");
		System.out.println(uuid);
//		try {
//			GeneratorSqlmap generatorSqlmap = new GeneratorSqlmap();
//			generatorSqlmap.generator();
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		ss: for (int i = 0; i < 5; i++) {
//			System.out.println(i);
//			for (int j = 0; j < 5; j++) {
//				System.out.println("发射点");
//				break ss;
//			}
//		}



//		StringBuilder builder = new StringBuilder();
//		builder.append("张三");
//		builder.append("ds");
//		builder.append("发士大夫");
//		System.out.println(builder.reverse().toString());
	}
}
