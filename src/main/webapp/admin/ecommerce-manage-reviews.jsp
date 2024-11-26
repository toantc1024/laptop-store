<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required Meta Tags Always Come First -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Title -->
    <title>Manage Reviews - E-commerce | Front - Admin &amp; Dashboard Template</title>
    <%@include file= "../admin/common/common-css.jsp" %>

  </head>

  <body class="   footer-offset">
    
      <script src="assets\vendor\hs-navbar-vertical-aside\hs-navbar-vertical-aside-mini-cache.js"></script>
    

    <!-- ONLY DEV -->
    
      <!-- Builder -->
      <%@include file="../admin/common/builder.jsp" %>
      <!-- End Builder Toggle -->

      <!-- JS Preview mode only -->
      <%@include file="../admin/common/navbar&header.jsp" %>

      <script src="assets\js\demo.js"></script>
    <!-- END ONLY DEV -->

    <!-- Search Form -->
      <%@include file="../admin/common/searchForm.jsp" %>
    <!-- End Search Form -->

    <!-- ========== MAIN CONTENT ========== -->
    <main id="content" role="main" class="main">
      <!-- Content -->
      <div class="content container-fluid">
        <!-- Page Header -->
        <div class="page-header">
          <h1 class="page-header-title">Manage reviews</h1>

          <!-- Nav -->
          <ul class="nav nav-tabs page-header-tabs">
            <li class="nav-item">
              <a class="nav-link active" href="#">
                Published
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">
                Pending <span class="badge badge-soft-dark badge-pill ml-1">2</span>
              </a>
            </li>
          </ul>
          <!-- End Nav -->
        </div>
        <!-- End Page Header -->

        <!-- Card -->
        <div class="card mb-3 mb-lg-5">
          <!-- Body -->
          <div class="card-body">
            <div class="row align-items-md-center gx-md-5">
              <div class="col-md-auto mb-3 mb-md-0">
                <div class="d-flex align-items-center">
                  <img class="avatar avatar-xxl avatar-4by3 mr-4" src="assets\svg\illustrations\review-5-star.svg" alt="Image Description">

                  <div class="d-block">
                    <h4 class="display-2 text-dark mb-0">4.84</h4>
                    <p>&mdash; of 7 reviews <span class="badge badge-soft-dark badge-pill ml-1">+1 this week</span></p>
                  </div>
                </div>
              </div>

              <div class="col-md">
                <ul class="list-unstyled list-unstyled-py-2 mb-0">
                  <!-- Review Ratings -->
                  <li class="d-flex align-items-center font-size-sm">
                    <span class="mr-3">5 star</span>
                    <div class="progress flex-grow-1">
                      <div class="progress-bar" role="progressbar" style="width: 82%;" aria-valuenow="82" aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                    <span class="ml-3">4</span>
                  </li>
                  <!-- End Review Ratings -->

                  <!-- Review Ratings -->
                  <li class="d-flex align-items-center font-size-sm">
                    <span class="mr-3">4 star</span>
                    <div class="progress flex-grow-1">
                      <div class="progress-bar" role="progressbar" style="width: 18%;" aria-valuenow="18" aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                    <span class="ml-3">3</span>
                  </li>
                  <!-- End Review Ratings -->

                  <!-- Review Ratings -->
                  <li class="d-flex align-items-center font-size-sm">
                    <span class="mr-3">3 star</span>
                    <div class="progress flex-grow-1">
                      <div class="progress-bar" role="progressbar" style="width: 0%;" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                    <span class="ml-3">0</span>
                  </li>
                  <!-- End Review Ratings -->

                  <!-- Review Ratings -->
                  <li class="d-flex align-items-center font-size-sm">
                    <span class="mr-3">2 star</span>
                    <div class="progress flex-grow-1">
                      <div class="progress-bar" role="progressbar" style="width: 0%;" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                    <span class="ml-3">0</span>
                  </li>
                  <!-- End Review Ratings -->

                  <!-- Review Ratings -->
                  <li class="d-flex align-items-center font-size-sm">
                    <span class="mr-3">1 star</span>
                    <div class="progress flex-grow-1">
                      <div class="progress-bar" role="progressbar" style="width: 0%;" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                    <span class="ml-3">0</span>
                  </li>
                  <!-- End Review Ratings -->
                </ul>
              </div>
            </div>
          </div>
          <!-- End Body -->
        </div>
        <!-- End Card -->
        
        <!-- Card -->
        <div class="card">
          <!-- Header -->
          <div class="card-header">
            <div class="row justify-content-between align-items-center flex-grow-1">
              <div class="col-sm-6 col-md-4 mb-3 mb-sm-0">
                <form>
                  <!-- Search -->
                  <div class="input-group input-group-merge input-group-flush">
                    <div class="input-group-prepend">
                      <div class="input-group-text">
                        <i class="tio-search"></i>
                      </div>
                    </div>
                    <input id="datatableSearch" type="search" class="form-control" placeholder="Search reviews" aria-label="Search reviews">
                  </div>
                  <!-- End Search -->
                </form>
              </div>

              <div class="col-sm-6">
                <div class="d-sm-flex justify-content-sm-end align-items-sm-center">
                  <!-- Datatable Info -->
                  <div id="datatableCounterInfo" class="mr-2 mb-2 mb-sm-0" style="display: none;">
                    <div class="d-flex align-items-center">
                      <span class="font-size-sm mr-3">
                        <span id="datatableCounter">0</span>
                        Selected
                      </span>
                      <a class="btn btn-sm btn-outline-danger mr-2" href="javascript:;">
                        <i class="tio-delete-outlined"></i> Delete
                      </a>
                      <a class="btn btn-sm btn-primary" href="javascript:;">
                        <i class="tio-publish"></i> Publish
                      </a>
                    </div>
                  </div>
                  <!-- End Datatable Info -->

                  <!-- Unfold -->
                  <div class="hs-unfold mr-2">
                    <a class="js-hs-unfold-invoker btn btn-sm btn-white dropdown-toggle" href="javascript:;" data-hs-unfold-options='{
                         "target": "#usersExportDropdown",
                         "type": "css-animation"
                       }'>
                      <i class="tio-download-to mr-1"></i> Export
                    </a>

                    <div id="usersExportDropdown" class="hs-unfold-content dropdown-unfold dropdown-menu dropdown-menu-sm-right">
                      <span class="dropdown-header">Options</span>
                      <a id="export-copy" class="dropdown-item" href="javascript:;">
                        <img class="avatar avatar-xss avatar-4by3 mr-2" src="assets\svg\illustrations\copy.svg" alt="Image Description">
                        Copy
                      </a>
                      <a id="export-print" class="dropdown-item" href="javascript:;">
                        <img class="avatar avatar-xss avatar-4by3 mr-2" src="assets\svg\illustrations\print.svg" alt="Image Description">
                        Print
                      </a>
                      <div class="dropdown-divider"></div>
                      <span class="dropdown-header">Download options</span>
                      <a id="export-excel" class="dropdown-item" href="javascript:;">
                        <img class="avatar avatar-xss avatar-4by3 mr-2" src="assets\svg\brands\excel.svg" alt="Image Description">
                        Excel
                      </a>
                      <a id="export-csv" class="dropdown-item" href="javascript:;">
                        <img class="avatar avatar-xss avatar-4by3 mr-2" src="assets\svg\components\placeholder-csv-format.svg" alt="Image Description">
                        .CSV
                      </a>
                      <a id="export-pdf" class="dropdown-item" href="javascript:;">
                        <img class="avatar avatar-xss avatar-4by3 mr-2" src="assets\svg\brands\pdf.svg" alt="Image Description">
                        PDF
                      </a>
                    </div>
                  </div>
                  <!-- End Unfold -->

                  <!-- Select -->
                  <select class="js-select2-custom js-datatable-filter custom-select-sm" size="1" style="opacity: 0;" data-target-column-index="5" data-hs-select2-options='{
                            "minimumResultsForSearch": "Infinity",
                            "customClass": "custom-select custom-select-sm",
                            "dropdownAutoWidth": true,
                            "width": true,
                            "placeholder": "Filters"
                          }'>
                    <option value="">All</option>
                    <option value="Published">Published</option>
                    <option value="Pending">Pending</option>
                  </select>
                  <!-- End Select -->
                </div>
              </div>
            </div>
            <!-- End Row -->
          </div>
          <!-- End Header -->

          <!-- Table -->
          <div class="table-responsive datatable-custom">
            <table id="datatable" class="table table-borderless table-thead-bordered table-nowrap card-table" data-hs-datatables-options='{
                     "columnDefs": [{
                        "targets": [0, 3, 6],
                        "orderable": false
                      }],
                     "order": [],
                     "info": {
                       "totalQty": "#datatableWithPaginationInfoTotalQty"
                     },
                     "search": "#datatableSearch",
                     "entries": "#datatableEntries",
                     "pageLength": 5,
                     "isResponsive": false,
                     "isShowPaging": false,
                     "pagination": "datatablePagination"
                   }'>
              <thead class="thead-light">
                <tr>
                  <th scope="col" class="table-column-pr-0">
                    <div class="custom-control custom-checkbox">
                      <input id="datatableCheckAll" type="checkbox" class="custom-control-input">
                      <label class="custom-control-label" for="datatableCheckAll"></label>
                    </div>
                  </th>
                  <th>Product</th>
                  <th>Reviewer</th>
                  <th>Review</th>
                  <th>Date</th>
                  <th>Status</th>
                  <th>Actions</th>
                </tr>
              </thead>

              <tbody>
                <tr>
                  <td class="table-column-pr-0">
                    <div class="custom-control custom-checkbox">
                      <input type="checkbox" class="custom-control-input" id="usersDataCheck2">
                      <label class="custom-control-label" for="usersDataCheck2"></label>
                    </div>
                  </td>
                  <th>
                    <a class="d-flex align-items-center" href="user-profile.jsp">
                      <div class="avatar">
                        <img class="avatar-img" src="assets\img\400x400\img18.jpg" alt="Image Description">
                      </div>
                      <div class="ml-3">
                        <span class="h5 text-hover-primary">Brown Hat</span>
                      </div>
                    </a>
                  </th>
                  <td>
                    <a class="d-flex align-items-center" href="user-profile.jsp">
                      <div class="avatar avatar-circle">
                        <img class="avatar-img" src="assets\img\160x160\img10.jpg" alt="Image Description">
                      </div>
                      <div class="ml-3">
                        <span class="d-block h5 text-hover-primary mb-0">Amanda Harvey <i class="tio-verified text-primary" data-toggle="tooltip" data-placement="top" title="Verified purchase"></i></span>
                        <span class="d-block font-size-sm text-body">amanda@example.com</span>
                      </div>
                    </a>
                  </td>
                  <td>
                    <div class="text-wrap" style="width: 18rem;">
                      <div class="d-flex mb-2">
                        <div class="mr-1"><img src="assets\svg\components\star.svg" alt="Review rating" width="14"></div>
                        <div class="mr-1"><img src="assets\svg\components\star.svg" alt="Review rating" width="14"></div>
                        <div class="mr-1"><img src="assets\svg\components\star.svg" alt="Review rating" width="14"></div>
                        <div class="mr-1"><img src="assets\svg\components\star.svg" alt="Review rating" width="14"></div>
                        <div class="mr-1"><img src="assets\svg\components\star.svg" alt="Review rating" width="14"></div>
                      </div>

                      <h4 class="mb-1">I just love it!</h4>
                      <p>I bought this hat for my boyfriend, but then i found out he cheated on me so I kept it and I love it!! I wear it all the time and there is no problem with the fit even though its a mens" hat.</p>
                    </div>
                  </td>
                  <td>Aug 17, 2020, 5:48</td>
                  <td><span class="badge badge-soft-success ml-2">Published</span></td>
                  <td>
                    <!-- Unfold -->
                    <div class="hs-unfold">
                      <a class="js-hs-unfold-invoker btn btn-icon btn-sm btn-ghost-secondary rounded-circle" href="javascript:;" data-hs-unfold-options='{
                           "target": "#settingsDropdown1",
                           "type": "css-animation"
                         }'>
                        <i class="tio-more-horizontal"></i>
                      </a>

                      <div id="settingsDropdown1" class="hs-unfold-content dropdown-unfold dropdown-menu dropdown-menu-right mt-1">
                        <span class="dropdown-header">Settings</span>

                        <a class="dropdown-item" href="#">
                          <i class="tio-edit dropdown-item-icon"></i> Edit
                        </a>
                        <a class="dropdown-item" href="#">
                          <i class="tio-publish dropdown-item-icon"></i> Publish
                        </a>
                        <a class="dropdown-item" href="#">
                          <i class="tio-delete-outlined dropdown-item-icon"></i> Delete
                        </a>

                        <div class="dropdown-divider"></div>

                        <span class="dropdown-header">Feedback</span>

                        <a class="dropdown-item" href="#">
                          <i class="tio-reply dropdown-item-icon"></i> Reply
                        </a>
                      </div>
                    </div>
                    <!-- End Unfold -->
                  </td>
                </tr>

                <tr>
                  <td class="table-column-pr-0">
                    <div class="custom-control custom-checkbox">
                      <input type="checkbox" class="custom-control-input" id="usersDataCheck3">
                      <label class="custom-control-label" for="usersDataCheck3"></label>
                    </div>
                  </td>
                  <th>
                    <a class="d-flex align-items-center" href="user-profile.jsp">
                      <div class="avatar">
                        <img class="avatar-img" src="assets\img\400x400\img3.jpg" alt="Image Description">
                      </div>
                      <div class="ml-3">
                        <span class="h5 text-hover-primary">Calvin Klein t-shirts</span>
                      </div>
                    </a>
                  </th>
                  <td>
                    <a class="d-flex align-items-center" href="user-profile.jsp">
                      <div class="avatar avatar-soft-dark avatar-circle">
                        <span class="avatar-initials">A</span>
                      </div>
                      <div class="ml-3">
                        <span class="d-block h5 text-hover-primary mb-0">Anne Richard</span>
                        <span class="d-block font-size-sm text-body">anne@example.com</span>
                      </div>
                    </a>
                  </td>
                  <td>
                    <div class="text-wrap" style="width: 18rem;">
                      <div class="d-flex mb-2">
                        <div class="mr-1"><img src="assets\svg\components\star.svg" alt="Review rating" width="14"></div>
                        <div class="mr-1"><img src="assets\svg\components\star.svg" alt="Review rating" width="14"></div>
                        <div class="mr-1"><img src="assets\svg\components\star.svg" alt="Review rating" width="14"></div>
                        <div class="mr-1"><img src="assets\svg\components\star.svg" alt="Review rating" width="14"></div>
                        <div class="mr-1"><img src="assets\svg\components\star.svg" alt="Review rating" width="14"></div>
                      </div>

                      <h4 class="mb-1">Really nice</h4>
                      <p>Material is great and very comfortable and stylish.</p>
                    </div>
                  </td>
                  <td>Aug 04, 2020, 3:17</td>
                  <td><span class="badge badge-soft-warning ml-2">Pending</span></td>
                  <td>
                    <!-- Unfold -->
                    <div class="hs-unfold">
                      <a class="js-hs-unfold-invoker btn btn-icon btn-sm btn-ghost-secondary rounded-circle" href="javascript:;" data-hs-unfold-options='{
                           "target": "#settingsDropdown2",
                           "type": "css-animation"
                         }'>
                        <i class="tio-more-horizontal"></i>
                      </a>

                      <div id="settingsDropdown2" class="hs-unfold-content dropdown-unfold dropdown-menu dropdown-menu-right mt-1">
                        <span class="dropdown-header">Settings</span>

                        <a class="dropdown-item" href="#">
                          <i class="tio-edit dropdown-item-icon"></i> Edit
                        </a>
                        <a class="dropdown-item" href="#">
                          <i class="tio-publish dropdown-item-icon"></i> Publish
                        </a>
                        <a class="dropdown-item" href="#">
                          <i class="tio-delete-outlined dropdown-item-icon"></i> Delete
                        </a>

                        <div class="dropdown-divider"></div>

                        <span class="dropdown-header">Feedback</span>

                        <a class="dropdown-item" href="#">
                          <i class="tio-reply dropdown-item-icon"></i> Reply
                        </a>
                      </div>
                    </div>
                    <!-- End Unfold -->
                  </td>
                </tr>

                <tr>
                  <td class="table-column-pr-0">
                    <div class="custom-control custom-checkbox">
                      <input type="checkbox" class="custom-control-input" id="usersDataCheck4">
                      <label class="custom-control-label" for="usersDataCheck4"></label>
                    </div>
                  </td>
                  <th>
                    <a class="d-flex align-items-center" href="user-profile.jsp">
                      <div class="avatar">
                        <img class="avatar-img" src="assets\img\400x400\img24.jpg" alt="Image Description">
                      </div>
                      <div class="ml-3">
                        <span class="h5 text-hover-primary">Clarks shoes</span>
                      </div>
                    </a>
                  </th>
                  <td>
                    <a class="d-flex align-items-center" href="user-profile.jsp">
                      <div class="avatar avatar-circle">
                        <img class="avatar-img" src="assets\img\160x160\img3.jpg" alt="Image Description">
                      </div>
                      <div class="ml-3">
                        <span class="d-block h5 text-hover-primary mb-0">David Harrison</span>
                        <span class="d-block font-size-sm text-body">david@example.com</span>
                      </div>
                    </a>
                  </td>
                  <td>
                    <div class="text-wrap" style="width: 18rem;">
                      <div class="d-flex mb-2">
                        <div class="mr-1"><img src="assets\svg\components\star.svg" alt="Review rating" width="14"></div>
                        <div class="mr-1"><img src="assets\svg\components\star.svg" alt="Review rating" width="14"></div>
                        <div class="mr-1"><img src="assets\svg\components\star.svg" alt="Review rating" width="14"></div>
                        <div class="mr-1"><img src="assets\svg\components\star.svg" alt="Review rating" width="14"></div>
                        <div class="mr-1"><img src="assets\svg\components\star-muted.svg" alt="Review rating" width="14"></div>
                      </div>

                      <h4 class="mb-1">Good product</h4>
                      <p>A really well built shoe. It looks great and wears just as well. A great staple in ball caps.</p>
                    </div>
                  </td>
                  <td>June 18, 2020, 09:19</td>
                  <td><span class="badge badge-soft-success ml-2">Published</span></td>
                  <td>
                    <!-- Unfold -->
                    <div class="hs-unfold">
                      <a class="js-hs-unfold-invoker btn btn-icon btn-sm btn-ghost-secondary rounded-circle" href="javascript:;" data-hs-unfold-options='{
                           "target": "#settingsDropdown3",
                           "type": "css-animation"
                         }'>
                        <i class="tio-more-horizontal"></i>
                      </a>

                      <div id="settingsDropdown3" class="hs-unfold-content dropdown-unfold dropdown-menu dropdown-menu-right mt-1">
                        <span class="dropdown-header">Settings</span>

                        <a class="dropdown-item" href="#">
                          <i class="tio-edit dropdown-item-icon"></i> Edit
                        </a>
                        <a class="dropdown-item" href="#">
                          <i class="tio-publish dropdown-item-icon"></i> Publish
                        </a>
                        <a class="dropdown-item" href="#">
                          <i class="tio-delete-outlined dropdown-item-icon"></i> Delete
                        </a>

                        <div class="dropdown-divider"></div>

                        <span class="dropdown-header">Feedback</span>

                        <a class="dropdown-item" href="#">
                          <i class="tio-reply dropdown-item-icon"></i> Reply
                        </a>
                      </div>
                    </div>
                    <!-- End Unfold -->
                  </td>
                </tr>

                <tr>
                  <td class="table-column-pr-0">
                    <div class="custom-control custom-checkbox">
                      <input type="checkbox" class="custom-control-input" id="usersDataCheck5">
                      <label class="custom-control-label" for="usersDataCheck5"></label>
                    </div>
                  </td>
                  <th>
                    <a class="d-flex align-items-center" href="user-profile.jsp">
                      <div class="avatar">
                        <img class="avatar-img" src="assets\img\400x400\img19.jpg" alt="Image Description">
                      </div>
                      <div class="ml-3">
                        <span class="h5 text-hover-primary">Levis women's jeans</span>
                      </div>
                    </a>
                  </th>
                  <td>
                    <a class="d-flex align-items-center" href="user-profile.jsp">
                      <div class="avatar avatar-circle">
                        <img class="avatar-img" src="assets\img\160x160\img5.jpg" alt="Image Description">
                      </div>
                      <div class="ml-3">
                        <span class="d-block h5 text-hover-primary mb-0">David Harrison</span>
                        <span class="d-block font-size-sm text-body">david@example.com</span>
                      </div>
                    </a>
                  </td>
                  <td>
                    <div class="text-wrap" style="width: 18rem;">
                      <div class="d-flex mb-2">
                        <div class="mr-1"><img src="assets\svg\components\star.svg" alt="Review rating" width="14"></div>
                        <div class="mr-1"><img src="assets\svg\components\star.svg" alt="Review rating" width="14"></div>
                        <div class="mr-1"><img src="assets\svg\components\star.svg" alt="Review rating" width="14"></div>
                        <div class="mr-1"><img src="assets\svg\components\star.svg" alt="Review rating" width="14"></div>
                        <div class="mr-1"><img src="assets\svg\components\star.svg" alt="Review rating" width="14"></div>
                      </div>

                      <h4 class="mb-1">Buy the product, you will not regret it!</h4>
                      <p>Don't let this merchandise get away! It's a must buy and you will look good in it while working out.</p>
                    </div>
                  </td>
                  <td>June 08, 2020, 07:22</td>
                  <td><span class="badge badge-soft-success ml-2">Published</span></td>
                  <td>
                    <!-- Unfold -->
                    <div class="hs-unfold">
                      <a class="js-hs-unfold-invoker btn btn-icon btn-sm btn-ghost-secondary rounded-circle" href="javascript:;" data-hs-unfold-options='{
                           "target": "#settingsDropdown4",
                           "type": "css-animation"
                         }'>
                        <i class="tio-more-horizontal"></i>
                      </a>

                      <div id="settingsDropdown4" class="hs-unfold-content dropdown-unfold dropdown-menu dropdown-menu-right mt-1">
                        <span class="dropdown-header">Settings</span>

                        <a class="dropdown-item" href="#">
                          <i class="tio-edit dropdown-item-icon"></i> Edit
                        </a>
                        <a class="dropdown-item" href="#">
                          <i class="tio-publish dropdown-item-icon"></i> Publish
                        </a>
                        <a class="dropdown-item" href="#">
                          <i class="tio-delete-outlined dropdown-item-icon"></i> Delete
                        </a>

                        <div class="dropdown-divider"></div>

                        <span class="dropdown-header">Feedback</span>

                        <a class="dropdown-item" href="#">
                          <i class="tio-reply dropdown-item-icon"></i> Reply
                        </a>
                      </div>
                    </div>
                    <!-- End Unfold -->
                  </td>
                </tr>

                <tr>
                  <td class="table-column-pr-0">
                    <div class="custom-control custom-checkbox">
                      <input type="checkbox" class="custom-control-input" id="usersDataCheck6">
                      <label class="custom-control-label" for="usersDataCheck6"></label>
                    </div>
                  </td>
                  <th>
                    <a class="d-flex align-items-center" href="user-profile.jsp">
                      <div class="avatar">
                        <img class="avatar-img" src="assets\img\400x400\img11.jpg" alt="Image Description">
                      </div>
                      <div class="ml-3">
                        <span class="h5 text-hover-primary">Asos t-shirts</span>
                      </div>
                    </a>
                  </th>
                  <td>
                    <a class="d-flex align-items-center" href="user-profile.jsp">
                      <div class="avatar avatar-soft-dark avatar-circle">
                        <span class="avatar-initials">B</span>
                      </div>
                      <div class="ml-3">
                        <span class="d-block h5 text-hover-primary mb-0">Bob Dean</span>
                        <span class="d-block font-size-sm text-body">bob@example.com</span>
                      </div>
                    </a>
                  </td>
                  <td>
                    <div class="text-wrap" style="width: 18rem;">
                      <div class="d-flex mb-2">
                        <div class="mr-1"><img src="assets\svg\components\star.svg" alt="Review rating" width="14"></div>
                        <div class="mr-1"><img src="assets\svg\components\star.svg" alt="Review rating" width="14"></div>
                        <div class="mr-1"><img src="assets\svg\components\star.svg" alt="Review rating" width="14"></div>
                        <div class="mr-1"><img src="assets\svg\components\star.svg" alt="Review rating" width="14"></div>
                        <div class="mr-1"><img src="assets\svg\components\star-muted.svg" alt="Review rating" width="14"></div>
                      </div>

                      <h4 class="mb-1">Ready for the heat!</h4>
                      <p>As good as the heat Rdy T-shirt but without the sleeves. Love the stripes on the back.</p>
                    </div>
                  </td>
                  <td>May 27, 2020, 04:01</td>
                  <td><span class="badge badge-soft-warning ml-2">Pending</span></td>
                  <td>
                    <!-- Unfold -->
                    <div class="hs-unfold">
                      <a class="js-hs-unfold-invoker btn btn-icon btn-sm btn-ghost-secondary rounded-circle" href="javascript:;" data-hs-unfold-options='{
                           "target": "#settingsDropdown5",
                           "type": "css-animation"
                         }'>
                        <i class="tio-more-horizontal"></i>
                      </a>

                      <div id="settingsDropdown5" class="hs-unfold-content dropdown-unfold dropdown-menu dropdown-menu-right mt-1">
                        <span class="dropdown-header">Settings</span>

                        <a class="dropdown-item" href="#">
                          <i class="tio-edit dropdown-item-icon"></i> Edit
                        </a>
                        <a class="dropdown-item" href="#">
                          <i class="tio-publish dropdown-item-icon"></i> Publish
                        </a>
                        <a class="dropdown-item" href="#">
                          <i class="tio-delete-outlined dropdown-item-icon"></i> Delete
                        </a>

                        <div class="dropdown-divider"></div>

                        <span class="dropdown-header">Feedback</span>

                        <a class="dropdown-item" href="#">
                          <i class="tio-reply dropdown-item-icon"></i> Reply
                        </a>
                      </div>
                    </div>
                    <!-- End Unfold -->
                  </td>
                </tr>

                <tr>
                  <td class="table-column-pr-0">
                    <div class="custom-control custom-checkbox">
                      <input type="checkbox" class="custom-control-input" id="usersDataCheck7">
                      <label class="custom-control-label" for="usersDataCheck7"></label>
                    </div>
                  </td>
                  <th>
                    <a class="d-flex align-items-center" href="user-profile.jsp">
                      <div class="avatar">
                        <img class="avatar-img" src="assets\img\400x400\img7.jpg" alt="Image Description">
                      </div>
                      <div class="ml-3">
                        <span class="h5 text-hover-primary">Tiro track jacket</span>
                      </div>
                    </a>
                  </th>
                  <td>
                    <a class="d-flex align-items-center" href="user-profile.jsp">
                      <div class="avatar avatar-circle">
                        <img class="avatar-img" src="assets\img\160x160\img9.jpg" alt="Image Description">
                      </div>
                      <div class="ml-3">
                        <span class="d-block h5 text-hover-primary mb-0">Ella Lauda <i class="tio-verified text-primary" data-toggle="tooltip" data-placement="top" title="Top endorsed"></i></span>
                        <span class="d-block font-size-sm text-body">ella@example.com</span>
                      </div>
                    </a>
                  </td>
                  <td>
                    <div class="text-wrap" style="width: 18rem;">
                      <div class="d-flex mb-2">
                        <div class="mr-1"><img src="assets\svg\components\star.svg" alt="Review rating" width="14"></div>
                        <div class="mr-1"><img src="assets\svg\components\star.svg" alt="Review rating" width="14"></div>
                        <div class="mr-1"><img src="assets\svg\components\star.svg" alt="Review rating" width="14"></div>
                        <div class="mr-1"><img src="assets\svg\components\star.svg" alt="Review rating" width="14"></div>
                        <div class="mr-1"><img src="assets\svg\components\star-muted.svg" alt="Review rating" width="14"></div>
                      </div>

                      <h4 class="mb-1">Very nice</h4>
                      <p>Great quality, it is a loose fitting but I would recommend going one size smaller as normal. I always prefer bigger size so bought large for me. Love the pride vibes!!!</p>
                    </div>
                  </td>
                  <td>June 08, 2020, 07:22</td>
                  <td><span class="badge badge-soft-success ml-2">Published</span></td>
                  <td>
                    <!-- Unfold -->
                    <div class="hs-unfold">
                      <a class="js-hs-unfold-invoker btn btn-icon btn-sm btn-ghost-secondary rounded-circle" href="javascript:;" data-hs-unfold-options='{
                           "target": "#settingsDropdown6",
                           "type": "css-animation"
                         }'>
                        <i class="tio-more-horizontal"></i>
                      </a>

                      <div id="settingsDropdown6" class="hs-unfold-content dropdown-unfold dropdown-menu dropdown-menu-right mt-1">
                        <span class="dropdown-header">Settings</span>

                        <a class="dropdown-item" href="#">
                          <i class="tio-edit dropdown-item-icon"></i> Edit
                        </a>
                        <a class="dropdown-item" href="#">
                          <i class="tio-publish dropdown-item-icon"></i> Publish
                        </a>
                        <a class="dropdown-item" href="#">
                          <i class="tio-delete-outlined dropdown-item-icon"></i> Delete
                        </a>

                        <div class="dropdown-divider"></div>

                        <span class="dropdown-header">Feedback</span>

                        <a class="dropdown-item" href="#">
                          <i class="tio-reply dropdown-item-icon"></i> Reply
                        </a>
                      </div>
                    </div>
                    <!-- End Unfold -->
                  </td>
                </tr>

                <tr>
                  <td class="table-column-pr-0">
                    <div class="custom-control custom-checkbox">
                      <input type="checkbox" class="custom-control-input" id="usersDataCheck8">
                      <label class="custom-control-label" for="usersDataCheck8"></label>
                    </div>
                  </td>
                  <th>
                    <a class="d-flex align-items-center" href="user-profile.jsp">
                      <div class="avatar">
                        <img class="avatar-img" src="assets\img\400x400\img14.jpg" alt="Image Description">
                      </div>
                      <div class="ml-3">
                        <span class="h5 text-hover-primary">Air Jordan 1</span>
                      </div>
                    </a>
                  </th>
                  <td>
                    <a class="d-flex align-items-center" href="user-profile.jsp">
                      <div class="avatar avatar-soft-info avatar-circle">
                        <span class="avatar-initials">L</span>
                      </div>
                      <div class="ml-3">
                        <span class="d-block h5 text-hover-primary mb-0">Lori Hunter <i class="tio-verified text-primary" data-toggle="tooltip" data-placement="top" title="Top endorsed"></i></span>
                        <span class="d-block font-size-sm text-body">lori@example.com</span>
                      </div>
                    </a>
                  </td>
                  <td>
                    <div class="text-wrap" style="width: 18rem;">
                      <div class="d-flex mb-2">
                        <div class="mr-1"><img src="assets\svg\components\star.svg" alt="Review rating" width="14"></div>
                        <div class="mr-1"><img src="assets\svg\components\star.svg" alt="Review rating" width="14"></div>
                        <div class="mr-1"><img src="assets\svg\components\star.svg" alt="Review rating" width="14"></div>
                        <div class="mr-1"><img src="assets\svg\components\star.svg" alt="Review rating" width="14"></div>
                        <div class="mr-1"><img src="assets\svg\components\star.svg" alt="Review rating" width="14"></div>
                      </div>

                      <h4 class="mb-1">The hype is real!</h4>
                      <p>I am very pleased with my purchase. I have started to have my friends become addicted to Air Jordans also.</p>
                    </div>
                  </td>
                  <td>May 01, 2020, 01:36</td>
                  <td><span class="badge badge-soft-success ml-2">Published</span></td>
                  <td>
                    <!-- Unfold -->
                    <div class="hs-unfold">
                      <a class="js-hs-unfold-invoker btn btn-icon btn-sm btn-ghost-secondary rounded-circle" href="javascript:;" data-hs-unfold-options='{
                           "target": "#settingsDropdown7",
                           "type": "css-animation"
                         }'>
                        <i class="tio-more-horizontal"></i>
                      </a>

                      <div id="settingsDropdown7" class="hs-unfold-content dropdown-unfold dropdown-menu dropdown-menu-right mt-1">
                        <span class="dropdown-header">Settings</span>

                        <a class="dropdown-item" href="#">
                          <i class="tio-edit dropdown-item-icon"></i> Edit
                        </a>
                        <a class="dropdown-item" href="#">
                          <i class="tio-publish dropdown-item-icon"></i> Publish
                        </a>
                        <a class="dropdown-item" href="#">
                          <i class="tio-delete-outlined dropdown-item-icon"></i> Delete
                        </a>

                        <div class="dropdown-divider"></div>

                        <span class="dropdown-header">Feedback</span>

                        <a class="dropdown-item" href="#">
                          <i class="tio-reply dropdown-item-icon"></i> Reply
                        </a>
                      </div>
                    </div>
                    <!-- End Unfold -->
                  </td>
                </tr>
              </tbody>
            </table>
          </div>
          <!-- End Table -->

          <!-- Footer -->
          <div class="card-footer">
            <!-- Pagination -->
            <div class="row justify-content-center justify-content-sm-between align-items-sm-center">
              <div class="col-sm mb-2 mb-sm-0">
                <div class="d-flex justify-content-center justify-content-sm-start align-items-center">
                  <span class="mr-2">Showing:</span>

                  <!-- Select -->
                  <select id="datatableEntries" class="js-select2-custom" data-hs-select2-options='{
                            "minimumResultsForSearch": "Infinity",
                            "customClass": "custom-select custom-select-sm custom-select-borderless",
                            "dropdownAutoWidth": true,
                            "width": true
                          }'>
                    <option value="5" selected="">5</option>
                    <option value="7">7</option>
                    <option value="12">12</option>
                  </select>
                  <!-- End Select -->

                  <span class="text-secondary mr-2">of</span>

                  <!-- Pagination Quantity -->
                  <span id="datatableWithPaginationInfoTotalQty"></span>
                </div>
              </div>

              <div class="col-sm-auto">
                <div class="d-flex justify-content-center justify-content-sm-end">
                  <!-- Pagination -->
                  <nav id="datatablePagination" aria-label="Activity pagination"></nav>
                </div>
              </div>
            </div>
            <!-- End Pagination -->
          </div>
          <!-- End Footer -->
        </div>
        <!-- End Card -->
      </div>
      <!-- End Content -->

      <!-- Footer -->
      <%@include file="../admin/common/footer.jsp" %>
      <!-- End Footer -->
    </main>
    <!-- ========== END MAIN CONTENT ========== -->



    <!-- JS Implementing Plugins -->
    <script src="assets\js\vendor.min.js"></script>
    
    

    <!-- JS Front -->
    <script src="assets\js\theme.min.js"></script>

    <!-- JS Plugins Init. -->
    <script>
      $(document).on('ready', function () {
        // ONLY DEV
        // =======================================================
        
          if (window.localStorage.getItem('hs-builder-popover') === null) {
            $('#builderPopover').popover('show')
              .on('shown.bs.popover', function () {
                $('.popover').last().addClass('popover-dark')
              });

            $(document).on('click', '#closeBuilderPopover' , function() {
              window.localStorage.setItem('hs-builder-popover', true);
              $('#builderPopover').popover('dispose');
            });
          } else {
            $('#builderPopover').on('show.bs.popover', function () {
              return false
            });
          }
        
        // END ONLY DEV
        // =======================================================


        // BUILDER TOGGLE INVOKER
        // =======================================================
        $('.js-navbar-vertical-aside-toggle-invoker').click(function () {
          $('.js-navbar-vertical-aside-toggle-invoker i').tooltip('hide');
        });

        
          // INITIALIZATION OF MEGA MENU
          // =======================================================
          var megaMenu = new HSMegaMenu($('.js-mega-menu'), {
            desktop: {
              position: 'left'
            }
          }).init();
        

        
        // INITIALIZATION OF NAVBAR VERTICAL NAVIGATION
        // =======================================================
        var sidebar = $('.js-navbar-vertical-aside').hsSideNav();

        
        // INITIALIZATION OF TOOLTIP IN NAVBAR VERTICAL MENU
        // =======================================================
        $('.js-nav-tooltip-link').tooltip({ boundary: 'window' })

        $(".js-nav-tooltip-link").on("show.bs.tooltip", function(e) {
          if (!$("body").hasClass("navbar-vertical-aside-mini-mode")) {
            return false;
          }
        });

        
        // INITIALIZATION OF UNFOLD
        // =======================================================
        $('.js-hs-unfold-invoker').each(function () {
          var unfold = new HSUnfold($(this)).init();
        });

        
        // INITIALIZATION OF FORM SEARCH
        // =======================================================
        $('.js-form-search').each(function () {
          new HSFormSearch($(this)).init()
        });

        
        // INITIALIZATION OF DATATABLES
        // =======================================================
        var datatable = $.HSCore.components.HSDatatables.init($('#datatable'), {
          dom: 'Bfrtip',
          buttons: [
            {
              extend: 'copy',
              className: 'd-none'
            },
            {
              extend: 'excel',
              className: 'd-none'
            },
            {
              extend: 'csv',
              className: 'd-none'
            },
            {
              extend: 'pdf',
              className: 'd-none'
            },
            {
              extend: 'print',
              className: 'd-none'
            },
          ],
          select: {
            style: 'multi',
            selector: 'td:first-child input[type="checkbox"]',
            classMap: {
              checkAll: '#datatableCheckAll',
              counter: '#datatableCounter',
              counterInfo: '#datatableCounterInfo'
            }
          },
          language: {
            zeroRecords: '<div class="text-center p-4">' +
                '<img class="mb-3" src="./assets/svg/illustrations/sorry.svg" alt="Image Description" style="width: 7rem;">' +
                '<p class="mb-0">No data to show</p>' +
                '</div>'
          }
        });

        $('#export-copy').click(function() {
          datatable.button('.buttons-copy').trigger()
        });

        $('#export-excel').click(function() {
          datatable.button('.buttons-excel').trigger()
        });

        $('#export-csv').click(function() {
          datatable.button('.buttons-csv').trigger()
        });

        $('#export-pdf').click(function() {
          datatable.button('.buttons-pdf').trigger()
        });

        $('#export-print').click(function() {
          datatable.button('.buttons-print').trigger()
        });

        $('.js-datatable-filter').on('change', function() {
          var $this = $(this),
            elVal = $this.val(),
            targetColumnIndex = $this.data('target-column-index');

          datatable.column(targetColumnIndex).search(elVal).draw();
        });

        $('#datatableSearch').on('mouseup', function (e) {
          var $input = $(this),
            oldValue = $input.val();

          if (oldValue == "") return;

          setTimeout(function(){
            var newValue = $input.val();

            if (newValue == ""){
              // Gotcha
              datatable.search('').draw();
            }
          }, 1);
        });

        
        // INITIALIZATION OF SELECT2
        // =======================================================
        $('.js-select2-custom').each(function () {
          var select2 = $.HSCore.components.HSSelect2.init($(this));
        });
      });
    </script>

    <!-- IE Support -->
    <script>
      if (/MSIE \d|Trident.*rv:/.test(navigator.userAgent)) document.write('<script src="./assets/vendor/babel-polyfill/polyfill.min.js"><\/script>');
    </script>
  </body>
</html>
