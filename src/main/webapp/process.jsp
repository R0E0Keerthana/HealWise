<%--
    Document   : stujsp
    Created on : Sep 21, 2023, 1:53:34 PM
    Author     : it21a52
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" import="java.sql.*,javax.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Phenotype Analysis</title>
    <style>
table,
td,
th {
border: 1px solid;
padding: 20px;
}
table{
text-allign:center;
}
</style>

</head>
<body>
    <%
        String pheno[]=new String[23];
        pheno[0] = request.getParameter("body_frame");
        pheno[1] = request.getParameter("manage_weight");
        pheno[2] = request.getParameter("skin_texture");
        pheno[3] = request.getParameter("skin_allergy");
        pheno[4] = request.getParameter("hair_type");
        pheno[5] = request.getParameter("hair_issue");
        pheno[6] = request.getParameter("food");
        pheno[7] = request.getParameter("digestion");
        pheno[8] = request.getParameter("taste");
        pheno[9] = request.getParameter("avoid");
        pheno[10] = request.getParameter("energy");
        pheno[11] = request.getParameter("emotion");
        pheno[12]= request.getParameter("sleep");
        pheno[13] = request.getParameter("sleep_disturb");
        pheno[14] = request.getParameter("stress");
        pheno[15] = request.getParameter("mood_swings");
        pheno[16] = request.getParameter("focus");
        pheno[17] = request.getParameter("memory");
        pheno[18] = request.getParameter("physical");
        pheno[19] = request.getParameter("temperature");
        pheno[20] = request.getParameter("health");
        pheno[21] = request.getParameter("family");
        pheno[22] = request.getParameter("season");
       
        int v=0;
        int p=0;
        int k=0;
        for(int i=0;i<4;i++)
        {if(pheno[i].equals("vata"))
       {
       v++;
        }
       else if(pheno[i].equals("pitta"))
        {
            p++;
        }
        else
        {
        k++;
        }
        }
    if (v >= p && v >= k)
    {out.println("<body style='background-color:#7ACB9E;'></body>"
    + "<center><h1>Your dominant dosha is identified as “Vata” (Air & Space).<br><i>Oh, I forgot where I put my keys again. No worries, it's an excuse for a treasure hunt</i></h1></center><br><h2>Vata Dosha Health Complications</h2>"
    + "<br><br>"
    + "<ul>"
    + "<li><b>Digestive Issues:</b> Vata imbalances often lead to irregular digestion, causing problems like gas, bloating, constipation, and abdominal discomfort.</li>"
    + "<li><b>Joint and Muscle Problems:</b> Vata dominance can result in joint pain, stiffness, and muscle aches, such as arthritis or fibromyalgia.</li>"
    + "<li><b>Anxiety and Nervous Disorders:</b> Excessive Vata can lead to anxiety, nervousness, restlessness, and even conditions like insomnia.</li>"
    + "<li><b>Dry Skin and Hair:</b> Vata imbalances are associated with dry and dehydrated skin, brittle hair, and cracked nails.</li>"
    + "<li><b>Irregular Menstruation:</b> Vata can lead to irregular menstrual cycles and menstrual pain in women.</li>"
    + "<li><b>Respiratory Issues:</b> Conditions like dry cough, asthma, and bronchitis can be exacerbated by Vata imbalances.</li>"
    + "</ul>"
    + "<br><br><h3>Favourable foods</h3>"
    + "<ul><li>Since Vata is a cold and dry dosha, it is best to stabilise it with warm, nourishing foods that have a moderately heavy texture as well as additional butter and fat. </li>"
    + "<li>Pick foods with savoury, sweet, and sour flavours as well as those that are calming and filling.</li>"
    + "<li>Vatas benefit from warm milk, cream, butter, hot cereals, warm soups, warm stews, warm fresh-baked bread, and raw nuts and butters made from nuts.</li>"
    + "<li>In the late afternoon, sip a hot or tea made from herbs while eating some snacks.</li>"
    + "<li>All sweet-flavoured fruits are suitable for Vata as long as they happen to be extra-ripe. </li>"
    + "<li>Vatas respond best to warm beverages or hot water.</li>"
    + "<li>Spices: The vata dosha is fine with cinnamon, cardamom, cumin, ginger, cloves, and garlic.</li>"
    + "</ul>"
    + "<br>"
    + "<h3>Foods to be reduced</h3>"
    + "<ul>"
    + "<li>For people with a vata imbalance (i.e., where vata is dominant), cold foods like salads, iced beverages, raw vegetables, and greens are not recommended.</li>"
    + "<li>Caffeine-rich beverages and sweets should be avoided as they disturb Vata.</li>"
    + "<li>Avoid eating unripe fruits because it is too astringent.</li>"
    + "</ul></center>"
    + "<br>"
    + "<u><h3>VATA DIET PLAN</h3></u>"
    + "<table>"
    + "<tr>"
    + "<th>CATEGORY</th>"
    + "<th>FAVOURABLE</th>"
    + "<th> IN  MODERATION</th>"
    + "</tr>"
    + "<tr>"
    + "<th>VEGETABLES</th>"
    + "<td>Beets, Carrots, Cucumber, Garlic, Green beans, Onions, Sweet potatoes, Radishes and Turnips</td>"
    + "<td>Broccoli, Cabbage, Cauliflower, Celery, Brinjal, Leafy green vegetables, Mushrooms, Peas, Potatoes and Zucchini</td>"
    + "</tr>"
    + "<tr>"
    + "<th>FRUITS</th>"
    + "<td>Bananas, Apricots, Avocados, Berries, Cherries, Coconut, Figs, Lemons, Grapes, Mangoes, Plums, Peaches and Pineapple</td>"
    + "<td>Cranberries, Pears, Pomegranates and dry fruits</td>"
    + "</tr>"
    + "<tr>"
    + "<th>GRAINS</th>"
    + "<td>Oats and Cooked rice</td>"
    + "<td>Wheat, Barley, Buckwheat, Corn and Millet"
    + "</td>"
    + "</tr>"
    + "<tr>"
    + "<th>DAIRY</th>"
    + "<td colspan='2'>All diary is acceptable</td>"
    + "</th>"
    + "</tr>"
    + "<tr>"
    + "<th>MEAT</th>"
    + "<td>Chicken, Seafood and Turkey</td>"
    + "<td>Wheat, Barley, Buckwheat, Corn and Millet</td>"
    + "</tr>"
    + "<tr>"
    + "<th>BEANS</th>"
    + "<td>Chickpeas, Tofu, Mung beans and Pink lentils</td>"
    + "<td>Kidney beans and Black beans</td>"
    + "</tr>"
    + "<tr>"
    + "<th>OILS</th>"
    + "<td>Sesame oil and Olive oil</td>"
    + "<td>Margarine, corn, mustard and vegetable oil</td>"
    + "</tr>"
    + "<tr>"
    + "<th>SWEETENERS</th>"
    + "<td colspan='2'>All sweeteners are acceptable</td>"
    + "</tr>"
    + "<tr>"
    + "<th>NUTS AND SEEDS</th>"
    + "<td colspan='2'> All are accepted in small amounts. Almonds are the best</td>"
    + "</tr>"
    + "<tr>"
    + "<th>HERBS AND SPICES</th>"
    + "<td colspan='2'>All are accepted in small amounts. Almonds are the best</td>"
    + "</th>"
    + "</table></center>");
    }
    else if(p>=v && p>=k)
    {
    out.println("<body style='background-color:#5CB85C;'></body><center><h1>Your dominant dosha is identified as “Pitta” (Fire & Little Water).<br><i>Spicy food? Yes, please! I can handle the heat</i></h1></center><br><h2>Pitta Dosha Health Complications</h2>"
    + "<br><br>"
    + "<ul>"
    + "<li><b>Acidic Digestive Disorders:</b> Pitta imbalances often result in conditions like acid reflux, gastritis, and ulcers due to excessive stomach acid</li>"
    + "<li><b>Skin Conditions:</b> Pitta dominance can lead to skin issues like acne, rashes, hives, and inflammation.</li>"
    + "<li><b>Irritability and Anger:</b> Excessive Pitta is linked to irritability, impatience, and a tendency toward anger or aggression.</li>"
    + "<li><b>Inflammatory Conditions:</b> Pitta imbalances can worsen inflammatory conditions such as gout and certain allergies.</li>"
    + "<li><b>Excessive Heat:</b> Pitta types are prone to overheating, which can result in heat-related issues like heat exhaustion or heat stroke.</li>"
    + "<li><b>Hormonal Imbalances:</b> Imbalanced Pitta can lead to hormonal fluctuations, affecting conditions like menopause or polycystic ovarian syndrome (PCOS) in women.</li>"
    + "</ul>"
    + "<br><br><h3>Favourable Foods</h3>"
    + "<ul>"
    + "<li>Take cool, refreshing foods in summer or hot weather, such as salads, milk, and ice cream.</li>"
    + "<li>Herbal tea, particularly mint or licorice root tea, are pacifying to Pittas.</li>"
    + "<li>Cold cereal, cinnamon toast, and apple tea is a good breakfast for a Pitta.</li>"
    + "<li>Vegetarian foods, generally, are the best for Pittas, as consuming red meat tends to increase Pitta.</li>"
    + "</ul>"
    + "<br>"
    + "<h3>Foods to be reduced</h3>"
    + "<ul>"
    + "<li>Pickles, sour cream, and cheese should not be used in pitas, and less butter and additional fat should be used instead.</li>"
    + "<li>Lemon juice should be used in place of vinegar in salad dressing. </li>"
    + "<li>Avoid alcoholic beverages and fermented foods.</li>"
    + "<li>Minimise coffee consumption. Avoid foods that are heavy, hot, salty, oily, or fried.</li>"
    + "<li>Egg yolks, nuts, hot spices, honey, and hot beverages should also be avoided by Pittas.</li>"
    + "</ul><center>"
    + "<br>"
    + "<u><h3>PITTA DIET PLAN</h3></u>"
    + "<table>"
    + "<tr>"
    + "<th>CATEGORY</th>"
    + "<th>FAVOURABLE</th>"
    + "<th>IN MODERATION</th>"
    + "</tr>"
    + "<tr>"
    + "<th>VEGETABLES</th>"
    + "<td>Sweet and bitter vegetables, like asparagus, broccoli, cabbage, radishes, cauliflower, celery, cucumber, green beans, leafy green vegetables, lettuce, mushrooms, okra, parsley, peas, potatoes, sprouts, sweet potatoes, zucchini, carrot, and spinach</td>"
    + "<td>Eggplant, onion, tomatoes, hot peppers, chilies, and beets</td>"
    + "</tr>"
    + "<tr>"
    + "<th>FRUITS</th>"
    + "<td>Bananas, avocados, cherries, coconuts, figs, mangoes, melons, oranges, pears, pineapples, plums, prunes, and raisins</td>"
    + "<td>Apricot, apples, berries, sour cherries, grapefruit, raw papaya, dark grapes, peaches and pineapples</td>"
    + "</tr>"
    + "<tr>"
    + "<th>GRAINS</th>"
    + "<td>Barley, oats, wheat, and white rice (preferably basmati)</td>"
    + "<td>Brown rice, corn, millet, and rye</td>"
    + "</tr>"
    + "<tr>"
    + "<th>DAIRY</th>"
    + "<td>Butter, egg whites, ghee (clarified butter), milk, and fruit sorbets</td>"
    + "<td>Cheese, sour yoghourt, sour buttermilk, egg yolk, sour cream, and ice cream</td>"
    + "</tr>"
    + "<tr>"
    + "<th>MEAT</th>"
    + "<td>Chicken, shrimp, turkey, and river fish</td>"
    + "<td>Red meat and seafood</td>"
    + "</tr>"
    + "<tr>"
    + "<th>BEANS</th>"
    + "<td>Chickpeas, mung beans, red lentils, tofu and other soybean products</td>"
    + "<td>Black gram, black lentils, and Ar har Dal</td>"
    + "</tr>"
    + "<tr>"
    + "<th>OILS</th>"
    + "<td>Olive, soy, sunflower, and grapeseed oil</td>"
    + "<td> Almond, corn, safflower, sesame, and coconut oil</td>"
    + "</tr>"
    + "<tr>"
    + "<th>SWEETENERS</th>"
    + "<td colspan='2'>All are acceptable except honey and molasses</td>"
    + "</tr>"
    + "<tr>"
    + "<th>NUTS AND SEEDS</th>"
    + "<td colspan='2'>Coconut, pumpkin seeds, sunflower seeds, flaxseeds</td>"
    + "</tr>"
    + "<tr>"
    + "<th>HERBS AND SPICES</th>"
    + "<td colspan='2'>Spices should generally be avoided as they are too heating. Cardamom, cilantro (green coriander), cinnamon, coriander seed, dill, fennel, mint, saffron, turmeric, cumin, and black pepper can be consumed in small amounts</td>"
    + "</tr>"
    + "</table>"
    + "<br></center>");
    }
    else
    {
    out.println("<body style='background-color:#66CDAA;'></body><center><h1>Your dominant dosha is identified as “Kapha” (Earth & Water).<br><i>I need my beauty sleep. Eight hours minimum, please!</i></h1></center><br><h2>Kapha Dosha Health Complications</i></h2>"
    + "<br><br>"
    + "<ul>"
    + "<li><b>Weight Gain and Obesity:</b> Excessive weight gain and difficulties in losing weight.</li>"
    + "<li><b>Respiratory Conditions:</b> Kapha dominance is associated with conditions like congestion, sinusitis, and respiratory allergies.</li>"
    + "<li><b>Lethargy and Depression:</b> Low energy, depression, emotional heaviness, and a lack of motivation.</li>"
    + "<li><b>Water Retention:</b> Kapha types may experience water retention, leading to swelling, edema, and kidney-related issues.</li>"
    + "<li><b>High Cholesterol:</b> Contribute to elevated cholesterol levels and cardiovascular issues.</li>"
    + "<li><b>Sluggish Digestion:</b> Kapha individuals may have slow digestion, leading to conditions like indigestion and obesity-related complications.</li>"
    + "</ul>"
    + "<br><br>"
    + "<h3>Favourable foods</h3>"
    + "<ul>"
    + "<li>Favourable foods include cooked light meals that are warm, light, and dry.</li>"
    + "<li>Raw fruits and vegetables or foods that have been lightly cooked are best for kaphas.</li>"
    + "<li>Kaphas are advised to consume items that are spicy, especially very hot Mexican or Indian food in the winter.</li>"
    + "<li>For Kaphas, dry cooking techniques like baking, broiling, grilling, and sautéing are preferred to moist cooking techniques like steaming, boiling, or poaching.</li>"
    + "<li>The Kapha appetite can be stimulated by foods like romaine lettuce, endive, or tonic water.</li>"
    + "<li>Cumin, fenugreek, sesame seed, and turmeric are the preferred spices.</li>"
    + "</ul>"
    + "<br>"
    + "<h3>Foods to be reduced</h3>"
    + "<ul>"
    + "<li>Consuming excessive amounts of sweet, fatty, and salty foods should be avoided by Kaphas because they can cause fluid retention.</li>"
    + "<li>They must stay away from deep-fried foods.</li>"
    + "<li>The main meal should be consumed in the middle of the day, and only a light, dry meal should be consumed in the evening.</li>"
    + "<li>Overeating is a typical Kapha tendency.</li>"
    + "<li>In general, Kaphas should abstain from dairy, sugar, and fats; avoid cold foods and beverages; and use ghee and oils sparingly.</li>"
    + "</ul><center>"
    + "<br>"
    + "<u><h3>KAPHA DIET PLAN</h3></u>"
    + "<table>"
    + "<tr>"
    + "<th>CATEGORY</th>"
    + "<th>FAVOURABLE</th>"
    + "<th>IN MODERATION</th>"
    + "</tr>"
    + "<tr>"
    + "<th>VEGETABLES</th>"
    + "<td>Asparagus, beets, broccoli, brinjal, cabbage, carrots, cauliflower, celery, garlic, green leafy vegetables</td>"
    + "<td>Cucumbers, sweet potatoes, tomatoes, and zucchini</td>"
    + "</tr>"
    + "<tr>"
    + "<th>FRUITS</th>"
    + "<td>Apples, apricots, berries, cherries, cranberries, papaya, pears, prunes, pomegranates, and grapefruit. Dried fruits in general are good for Kaphas</td>"
    + "<td>Dates, fresh figs, bananas, coconuts, and mangoes</td>"
    + "</tr>"
    + "<tr>"
    + "<th>GRAINS</th>"
    + "<td>Barley, buckwheat, corn, millet, oats, rye, and basmati rice</td>"
    + "<td>Rice and wheat</td>"
    + "</tr>"
    + "<tr>"
    + "<th>DAIRY</th>"
    + "<td>Warm skim milk, small amounts of whole milk, and eggs, goat’s milk, soy milk, and camel milk.</td>"
    + "<td>Egg yolk</td>"
    + "</tr>"
    + "<tr>"
    + "<th>MEAT</th>"
    + "<td>Chicken, turkey, and lean fish </td>"
    + "<td>Shrimp and red meat</td>"
    + "</tr>"
    + "<th>BEANS</th>"
    + "<td>All legumes are acceptable</td>"
    + "<td>Kidney beans and tofu</td>"
    + "</tr>"
    + "<tr>"
    + "<th>OILS</th>"
    + "<td colspan='2'>Almond, sunflower, olive oil, and grapeseed oil</td>"
    + "</tr>"
    + "<tr>"
    + "<th>SWEETENERS</th>"
    + "<td colspan='2'>All in very small quantities</td>"
    + "</tr>"
    + "<tr>"
    + "<th>NUTS AND SEEDS</th>"
    + "<td colspan='2'>Sunflower seeds, pumpkin seeds, and flax seeds</td>"
    + "</tr>"
    + "<tr>"
    + "<th>HERBS AND SPICES</th>"
    + "<td colspan='2'>All are good, especially cumin, fenugreek, sesame, and ginger, which is especially good for improving digestion</td>"
    + "</tr></br></center>");
    }
    %>
</body>
</html>