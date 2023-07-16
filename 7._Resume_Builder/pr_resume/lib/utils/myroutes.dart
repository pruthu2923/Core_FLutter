class MyRoutes {
  static String home = '/';
  static String resume = 'ResumeWorkSpace';
  static String contactpage = 'ContactPage';
  static String imagepath = 'assets/icons/';

  static List<Map<String , dynamic>> buildOptions = [
    {
    'name':'contact_info',
    'title':'Contact Info',
    'icon':'${imagepath}contact info.png',
    }, {
      'name':'carrier_objective',
      'title':'Carrier Objective',
      'icon':'${imagepath}briefcase.png',
    }, {
      'name':'personal_details',
      'title':'Personal Details',
      'icon':'${imagepath}account.png',
    },
    {
      'name':'education',
      'title':'Education',
      'icon':'${imagepath}grad_cap.png',
    },
    {
      'name':'experience',
      'title':'Experience',
      'icon':'${imagepath}logical.png',
    },
    {
      'name':'technical_skills',
      'title':'Technical Skills',
      'icon':'${imagepath}certificate.png',
    },
    {
      'name':'interest/hobbies',
      'title':'Interest/Hobbies',
      'icon':'${imagepath}open-book.png',
    },
    {
      'name':'projects',
      'title':'Projects',
      'icon':'${imagepath}management.png',
    },
    {
      'name':'achievements',
      'title':'Achievements',
      'icon':'${imagepath}experience.png',
    },
    {
      'name':'references',
      'title':'References',
      'icon':'${imagepath}handshake.png',
    },
  ];
}
