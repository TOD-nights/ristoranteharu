-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `order_ref` varchar(255) NOT NULL,
  `order_invoice` int(11) NOT NULL,
  `customer_first_name` varchar(255) NOT NULL,
  `customer_last_name` varchar(255) NOT NULL,
  `customer_address` varchar(255) NOT NULL,
  `customer_company` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `order_status` varchar(100) NOT NULL,
  `order_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `order_ref`, `order_invoice`, `customer_first_name`, `customer_last_name`, `customer_address`, `customer_company`, `amount`, `order_status`, `order_at`) VALUES
(1, '1iRxJtOtAlai4v6LEuGI', 786567, 'David', 'Richard', 'United States', 'Cloud Technologies', '3300.00', 'Completed', '2021-01-12 09:51:38'),
(2, '1iRxJtOtAlai4v6LEuGR', 486231, 'William', 'George', 'United States', 'Smart Tech Info', '500.00', 'Completed', '2021-01-12 09:38:27');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_items`
--

CREATE TABLE `tbl_order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `item_price` decimal(10,2) NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_order_items`
--

INSERT INTO `tbl_order_items` (`id`, `order_id`, `product_id`, `item_price`, `quantity`) VALUES
(1, 1, 1, '1500.00', 2),
(2, 1, 2, '300.00', 1),
(6, 2, 3, '500.00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `id` int(11) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `create_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`id`, `product_title`, `price`, `create_at`) VALUES
(1, 'FinePix Pro2 3D Camera', '1500.00', '2021-01-11 13:00:22'),
(2, 'Luxury Ultra thin Wrist Watch', '300.00', '2021-01-11 13:00:34'),
(3, 'Luxury Tv', '500.00', '2021-01-11 13:00:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order_items`
--
ALTER TABLE `tbl_order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_order_items`
--
ALTER TABLE `tbl_order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
