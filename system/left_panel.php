
                <div class="page-sidebar-wrapper">
                    <div class="page-sidebar navbar-collapse collapse bg-white">
                        <ul class="page-sidebar-menu  page-header-fixed " data-keep-expanded="false" data-auto-scroll="true" data-slide-speed="200">
                            <li class="sidebar-toggler-wrapper" align="center" style="text-align: center">
                                <img src="assets/images/logo/ipin.png/<?php echo $_COOKIE['logo_perusahaan']; ?>" width="50%" style="margin-top: 10px" onerror="this.onerror=null;this.src='assets/images/logo/ipin.png';">
                                <h5><b>Data Monitoring</b></h5>
                                <h6><?php echo $_COOKIE['level']; ?></h6>
                      
                            <?php 
                              $sql ="select class_icon, menu_header_name,l.menu_header_id ";
                              $sql.=" from m_menu_header h,m_menu_level l  where h.menu_header_id=l.menu_header_id  ";
                              $sql.=' and level_id ="'.$_COOKIE['level_id'].'"'; 
                              $sql.=" group by l.menu_header_id order by h.sort ASC ";  
                              // echo $sql;
                              $row=$objCtrl->GetGlobalFilter($sql);
                              $baris = "";
                              foreach($row as $item):
                                  $sql="select l.menu_id,c.menu_name,c.file_php ";
                                  $sql.=" from m_menu_child c,m_menu_level l where l.menu_id=c.menu_id ";
                                  $sql.=" and level_id  ='".$_COOKIE['level_id']."' and l.menu_header_id=".$item['menu_header_id'];  
                                  $sql.=" order by c.sort ASC"; 
                                  $row2=$objCtrl->GetGlobalFilter($sql);
                                  
                                  if(sizeof($row2) > 0) {
                                    // $menu_header_name = explode(' ', $item['menu_header_name']);
                                    // $menu_header_name = $menu_header_name[0].$menu_header_name[1];
                                      $baris.= '<li class="nav-item" id="li-head-'.$item['menu_header_id'].'">
                                      <a href="javascript:;" class="nav-link nav-toggle">
                                      <i class="'.$item['class_icon'].'"></i>
                                        <span class="title">'.$item['menu_header_name'].'</span>
                                          <span class="arrow" id="arrow-'.$item['menu_header_id'].'"></span>
                                        </a>
                                        <ul class="sub-menu">';
                                      foreach($row2 as $item2):
                                        // $menu_name2 = explode(' ', $item2['menu_name']);
                                        // $menu_name2 = $menu_name2[0].$menu_name2[1];
                                        $baris.='
                                          <li class="nav-item" id="li-'.$item2['menu_id'].'">
                                            <a href="'.$item2['file_php'].'" class="nav-link '.$item2['menu_id'].'">
                                              <span class="title">'.$item2['menu_name'].'</span>
                                            </a>
                                          </li>';
                                      endforeach;
                                      
                                      $baris.= '</ul>';
                                  }
                              
                                      $baris.= '</li>';
                              endforeach;
                              
                              echo $baris;
                            ?>
                          </ul>
                    </div>
                </div>