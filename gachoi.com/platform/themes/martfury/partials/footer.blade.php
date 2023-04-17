 <footer class="ps-footer">
        <div class="ps-container">
            <div class="ps-footer__widgets">
                <aside class="widget widget_footer widget_contact-us">
                    <h4 class="widget-title">{{ __('THÔNG TIN LIÊN HỆ') }}</h4>
                    <div class="widget_content">
                        @if (theme_option('hotline'))
                            <p>{{ __('Call us 24/7') }}</p>
                            <h3>{{ __('Hotline:'). theme_option('hotline') }}</h3>
                        @endif
                        <p>{{ theme_option('address') }} <br><a href="mailto:{{ theme_option('email') }}">{{ theme_option('email') }}</a></p>
{{--                                                <ul class="ps-list--social">--}}
{{--                                                    @for($i = 1; $i <= 10; $i++)--}}
{{--                                                        @if(theme_option('social-name-' . $i) && theme_option('social-url-' . $i) && theme_option('social-icon-' . $i))--}}
{{--                                                            <li>--}}
{{--                                                                <a href="{{ theme_option('social-url-' . $i) }}"--}}
{{--                                                                   title="{{ theme_option('social-name-' . $i) }}" style="color: {{ theme_option('social-color-' . $i) }}">--}}
{{--                                                                    <i class="fa {{ theme_option('social-icon-' . $i) }}"></i>--}}
{{--                                                                </a>--}}
{{--                                                            </li>--}}
{{--                                                        @endif--}}
{{--                                                    @endfor--}}
{{--                                                </ul>--}}
                    </div>
                </aside>
                {!! dynamic_sidebar('footer_sidebar') !!}
            </div>
            @if (Widget::group('bottom_footer_sidebar')->getWidgets())

            @endif
            <div class="ps-footer__copyright">
                <p>{{ theme_option('copyright') }}</p>
                @php $paymentMethods = array_filter(json_decode(theme_option('payment_methods', []), true)); @endphp
{{--                @if ($paymentMethods)--}}
{{--                    <div class="footer-payments">--}}
{{--                        <span>{{ __('We Using Safe Payment For') }}:</span>--}}
{{--                        <p class="d-sm-inline-block d-block">--}}
{{--                            @foreach($paymentMethods as $method)--}}
{{--                                @if (!empty($method))--}}
{{--                                    <span><img src="{{ RvMedia::getImageUrl($method) }}" alt="payment method"></span>--}}
{{--                                @endif--}}
{{--                            @endforeach--}}
{{--                        </p>--}}
{{--                    </div>--}}
{{--                @endif--}}
            </div>
        </div>
    </footer>



 <script>
     window.trans = {
         "View All": "{{ __('View All') }}",
         "No reviews!": "{{ __('No reviews!') }}",
     }
     window.siteUrl = "{{ route('public.index') }}";
 </script>

 {!! Theme::footer() !!}

 @if (session()->has('success_msg') || session()->has('error_msg') || (isset($errors) && $errors->count() > 0) || isset($error_msg))
     <script type="text/javascript">
         $(document).ready(function () {
             @if (session()->has('success_msg'))
             window.showAlert('alert-success', '{{ session('success_msg') }}');
             @endif

             @if (session()->has('error_msg'))
             window.showAlert('alert-danger', '{{ session('error_msg') }}');
             @endif

             @if (isset($error_msg))
             window.showAlert('alert-danger', '{{ $error_msg }}');
             @endif

             @if (isset($errors))
             @foreach ($errors->all() as $error)
             window.showAlert('alert-danger', '{!! $error !!}');
             @endforeach
             @endif
         });
     </script>
     @endif


    </body>
</html>
