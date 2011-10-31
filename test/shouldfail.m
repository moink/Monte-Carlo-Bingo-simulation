function shouldfail(description, call)

failed=0;
try
   call();
catch
  failed=1;
end

shouldequal(description, failed, 1);
