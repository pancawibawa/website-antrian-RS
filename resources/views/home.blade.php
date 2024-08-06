@extends('layouts.main')

@include('partials.navbar')

@section('content')


  <!-- ======= Hero Section ======= -->
  <section id="hero" class="d-flex align-items-center">
    <div class="container">
      <h1>AYO HIDUP SEHAT</h1>
      <h2>Mari Membuat Hidup Anda Lebih Bahagia</h2>
      <a href="/antrian" class="btn-get-started scrollto">Ambil Antrian</a>
    </div>
  </section><!-- End Hero -->
<main id="main">
    <!-- ======= Why Us Section ======= -->
    <section id="why-us" class="why-us">
      <div class="container">
        <div class="row">
          <div class="col-lg-4 d-flex align-items-stretch">
            <div class="content">
              <h3>Sistem Antrian Online</h3>
              <p>
                Ini adalah Sistem Antrian Rumah Sakit Online  dimana setiap pengunjung dapat mengambil antrian Sesuai Poliklinik terlebih dahulu dari rumah
              </p>
              <div class="text-center">
                <a href="/antrian" class="more-btn">Ambil Antrian <i class="bx bx-chevron-right"></i></a>
              </div>
            </div>
          </div>
          <div class="col-lg-8 d-flex align-items-stretch">
            <div class="icon-boxes d-flex flex-column justify-content-center">
              <div class="row">
                <div class="col-xl-4 d-flex align-items-stretch">
                  <div class="icon-box mt-4 mt-xl-0">
                    <i class="bx bx-plus-medical"></i>
                    <h4>Poli Umum</h4>
                    <p>Pelayanan Poli Umum adalah pelayanan pemeriksaan medis berupa pemeriksaan kesehatan, pengobatan, dan edukasi kepada pasien dalam rangka meningkatkan kesehatan perorangan dan masyarakat.</p>
                  </div>
                </div>
                <div class="col-xl-4 d-flex align-items-stretch">
                  <div class="icon-box mt-4 mt-xl-0">
                    <i class="bx bx-dna"></i>
                    <h4>Poli Gigi</h4>
                    <p>Pelayanan Kesehatan Gigi dan Mulut merupakan pelayanan kesehatan gigi dan mulut berupa pemeriksaan kesehatan gigi dan mulut, pengobatan dan pemberian tindakan medis dasar kesehatan gigi dan mulut.</p>
                  </div>
                </div>
                <div class="col-xl-4 d-flex align-items-stretch">
                  <div class="icon-box mt-4 mt-xl-0">
                    <i class="bx bxs-first-aid"></i>
                    <h4>Poli THT</h4>
                    <p>Pelayanan Kesehatan THT atau Telinga Hidung Tenggorokan berupa pemeriksaan kesehatan, pengobatan, dan pemberian tindakan medis pada Telinga Hidung Tenggorokan</p>
                  </div>
                </div>
              </div>
            </div><!-- End .content-->
          </div>
        </div>

      </div>
    </section><!-- End Why Us Section -->

    

    <!-- ======= tentangkami Section ======= -->
    <section id="tentangkami" class="tentangkami">
      <div class="page-section pb-0">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-lg-6 py-3 wow fadeInUp">
                            <h1>
                                Selamat Datang di Website Rumah Sakit Telkom
                                Medika
                            </h1>
                            <p class="text-grey mb-4 justify-text">
                                Telkom Medika adalah rumah sakit online yang
                                revolusioner, menyediakan fasilitas konsultasi
                                langsung dengan dokter, pemesanan janji dengan
                                dokter, serta layanan konsultasi obat. Dengan
                                platform yang inovatif ini, pengguna dapat
                                dengan mudah mengakses perawatan medis,
                                mendiskusikan masalah kesehatan mereka dengan
                                dokter, membuat janji, dan mendapatkan informasi
                                obat yang diperlukan tanpa harus meninggalkan
                                kenyamanan rumah mereka. Telkom Medika memadukan
                                teknologi modern dengan perawatan medis yang
                                berkualitas, menjadikannya solusi yang praktis
                                dan efisien untuk kebutuhan kesehatan.
                            </p>
                        </div>
                        <div
                            class="col-lg-6 wow fadeInRight"
                            data-wow-delay="400ms"
                        >
                            <div class="img-place custom-img-1">
                                <img src="../assets/img/bg-doctor.png" alt="" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    </section><!-- End Counts Section -->

    <!-- ======= Doctor Section ======= -->
    <section id="doctorSlideshow" class="doctorSlideshow">
            <div class="container">
                <div class="section-title">
                  <h2>Doctor</h2>
                </div>
                <div id="slider">
          <input type="radio" name="slider" id="slide1" checked>
          <input type="radio" name="slider" id="slide2">
          <input type="radio" name="slider" id="slide3">
          <input type="radio" name="slider" id="slide4">
          <div id="slides">
              <div id="overflow">
                <div class="inner">
                    <div class="slide slide_1">
                      <div class="slide-content">
                      <img src="../assets/img/doctors/dokter3.JPG" alt="" />
                          <h2>Dr. Fadil</h2>
                          <p>Dokter Mata</p>
                      </div>
                    </div>
                    <div class="slide slide_2">
                      <div class="slide-content">
                      <img src="../assets/img/doctors/doktor3.JPG" alt="" />
                          <h2>Dr. Paundra</h2>
                          <p>Dokter Spesialis</p>
                      </div>
                    </div>
                    <div class="slide slide_3">
                      <div class="slide-content">
                      <img src="../assets/img/doctors/dokter4.JPG" alt="" />
                          <h2>Dr. Panca</h2>
                          <p>Dokter THT</p>
                      </div>
                    </div>
                    <div class="slide slide_4">
                      <div class="slide-content">
                      <img src="../assets/img/doctors/dokter5.JPG" alt="" />
                          <h2>Dr. Fahreza</h2>
                          <p>Dokter Gigi</p>
                      </div>
                    </div>
                </div>
              </div>
          </div>
          <div id="controls">
              <label for="slide1"></label>
              <label for="slide2"></label>
              <label for="slide3"></label>
              <label for="slide4"></label>
          </div>
          <div id="bullets">
              <label for="slide1"></label>
              <label for="slide2"></label>
              <label for="slide3"></label>
              <label for="slide4"></label>
          </div>
        </div>
      </div>
       

    </section><!-- End Counts Section -->


    <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact">
      <div class="container">

        <div class="section-title">
          <h2>Contact</h2>
        </div>
      </div>


      <div class="container">
        <div class="row mt-5">

          <div class="col-lg-4">
            <div class="info">
              <div class="address">
                <i class="bi bi-geo-alt"></i>
                <h4>Location:</h4>
                <p>Grendeng, Purwokerto, Jawa Tengah 535022</p>
              </div>

              <div class="email">
                <i class="bi bi-envelope"></i>
                <h4>Email:</h4>
                <p>Pemwebppl@tubes.com</p>
              </div>

              <div class="phone">
                <i class="bi bi-phone"></i>
                <h4>Call:</h4>
                <p>+62 8955 55488 333</p>
              </div>

            </div>

          </div>

          <div class="col-lg-8 mt-5 mt-lg-0">

            <form action="forms/contact.php" method="post" role="form" class="php-email-form">
              <div class="row">
                <div class="col-md-6 form-group">
                  <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" required>
                </div>
                <div class="col-md-6 form-group mt-3 mt-md-0">
                  <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" required>
                </div>
              </div>
              <div class="form-group mt-3">
                <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" required>
              </div>
              <div class="form-group mt-3">
                <textarea class="form-control" name="message" rows="5" placeholder="Message" required></textarea>
              </div>
              <div class="my-3">
                <div class="loading">Loading</div>
                <div class="error-message"></div>
                <div class="sent-message">Your message has been sent. Thank you!</div>
              </div>
              <div class="text-center"><button type="submit">Send Message</button></div>
            </form>

          </div>

        </div>

      </div>
    </section><!-- End Contact Section -->

  </main><!-- End #main -->
  
@endsection

@include('partials.footer')